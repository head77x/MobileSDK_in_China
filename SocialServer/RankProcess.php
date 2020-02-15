<?php 
	$myenc = "GodLovesUs!JejusProtectUs!"; 
	
	$user_id = $_POST['ID'];
	$mydevice = $_POST['PW'];
	$appkey = $_POST['AK'];
	$score = $_POST['SC'];
	$cmd = $_POST['CMD'];
	
	$wantget = $_POST['WANT'];
	$counts = $_POST['CNT'];
	
	if ( $counts < 20 || $counts > 100 )
		$counts = 20;
	
	if ( $wantget < 1 )
		$wantget = 0;
	
	$hash = $_POST['check'];
	
	if ( $cmd == 88 )	// 디바이스 기록 삭제
	{
	    $real_hash = md5($mydevice.$appkey.$myenc); 
		
		if ( $hash != $real_hash )
		{
			echo '{"Result":"1","Error":"check 인자값이 다름 :'.$real_hash.':'.$hash.'(도착한값)"}';
			die();
		}
		
	}
	else 
	{
	    $real_hash = md5($user_id.$mydevice.$appkey.$score.$myenc); 
		
		if ( $hash != $real_hash )
		{
			echo '{"Result":"1","Error":"check 인자값이 다름 :'.$real_hash.':'.$hash.'(도착한값)"}';
			die();
		}
	}
	
    $db = mysql_connect('localhost', 'rankuser', 'ppyongaba75') or die('Could not connect: ' . mysql_error()); 
        mysql_select_db('rank_db') or die('Could not select database');

	// 먼저 APPKEY로 사용하는 테이블 이름 얻기
	$query = "SELECT table_name from rank_games where app_key='{$appkey}';";
	$result = mysql_query($query);
	
	if ( !$result ) 
	{
		echo '{"Result":"1","Error":"랭킹 테이블 얻기 쿼리 실패"}';
		die();
	}
	
	if ( mysql_num_rows($result) < 1 )
	{
		echo '{"Result":"1","Error":"해당 랭킹 테이블 얻을 수 없음"}';
		die();
	}
	
	$row = mysql_fetch_array($result);
	
	$tablename = $row['table_name'];
	
	mysql_free_result( $result );
	
	switch( $cmd )
	{
		// 관련 장비의 정보 삭제
		case 88:
			$query = "delete from {$tablename} where deviceid='{$mydevice}';";
			$result = mysql_query($query);
			
			if ( !$result ) 
			{
				echo '{"Result":"1","Error":"장비 삭제 쿼리 실패"}';
				die();
			}
			
			mysql_close();
		
			$resultstr = '{"Result" : "0"}';
		
			echo "\r\n".$resultstr;
			
			die();
		break;
		default:	
		// 이미 정보가 저장된 상태인지 읽기
		$query = "select idx from {$tablename} where id='{$user_id}' and deviceid='{$mydevice}';";
		$result = mysql_query($query);
		
		if ( !$result ) 
		{
			echo '{"Result":"1","Error":"유저 및 디바이스 정보 쿼리 실패"}';
			die();
		}
		
		if ( mysql_num_rows($result) < 1 )	// 정보가 없으면 insert
		{
			$query = "insert into {$tablename} values (0, {$score}, '{$user_id}', '{$mydevice}');";
			$result = mysql_query($query);
	
			if ( !$result ) 
			{
				echo '{"Result":"1","Error":"유저 정보 최초 삽입 쿼리 실패"}';
				die();
			}
			
			$my_idx = mysql_insert_id();
		}	// 정보가 있으면 update
		else 
		if ( $cmd != 77 )	// 단순 랭킹 얻기가 아니면 점수 업데이트
		{
			$row = mysql_fetch_array($result);
			
			$my_idx = $row['idx'];
			
			mysql_free_result( $result );
			
			$query = "update {$tablename} set score ={$score} where idx={$my_idx};";
			$result = mysql_query($query);
			
			if ( !$result ) 
			{
				echo '{"Result":"1","Error":"유저 점수 정보 업데이트 쿼리 실패"}';
				die();
			}
		}
		
		$query = "select count(idx) from {$tablename} where score > {$score};";
		$result = mysql_query($query);
	
		if ( !$result ) 
		{
			echo '{"Result":"1"}';
			die();
		}
			
		$row = mysql_fetch_array($result);
		
		// 내 랭킹 얻기
		$my_rank = $row['count(idx)'] + 1;
		
		mysql_free_result( $result );
		
		$query = "SELECT score,id,deviceid from {$tablename} order by score desc limit {$wantget}, {$counts};";
		$result = mysql_query($query);
	
		if ( !$result ) 
		{
			echo '{"Result":"1","Error":"랭킹 리스트 쿼리 실패 : '.$query.'"}';
			die();
		}
	
		$resultstr = '';
		$resultstr .= '{ "Result" : "0",';
		$resultstr .= '"MyRank" : "'.$my_rank.'",';
		$resultstr .= '"MyScore" : "'.$score.'",';
		$resultstr .= '"MyID" : "'.$user_id.'",';
		$resultstr .= '"MyDevice" : "'.$mydevice.'",';
			
		$resultstr .= '"RankLists":[';
	
		$cnt = 0;
				
		while( $row = mysql_fetch_array($result) )
		{
			if ( $cnt != 0 )
				$resultstr .= ',';
			
			$rankval = $cnt + $wantget + 1;
			
			$resultstr .= '{"Rank" : "'.$rankval.'", "Score" : "'.$row['score'].'", "ID" : "'.$row['id'].'", "DeviceID" : "'.$row['deviceid'].'" }';
			$cnt++;
		}
		
		$resultstr .= ']}';
		
		mysql_free_result( $result );
		
		mysql_close();
	
		echo "\r\n".$resultstr;
		
		die();
		break;
	}
?>
