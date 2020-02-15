<?php
	require_once( 'MegoLib/MegoDBMan.php' );

	if ( CheckDDOS() == true )
	{
		echo '{ "stat" : "0", "message" : "Too fast connect for check."}';
		die();	 
	}

	$db = null;
	$accdb = null;

	$real_ip = get_real_ip();

	$cmd = $_POST['cmd'];
	$gametype = $_POST['gametype']; 
	$deviceid = $_POST['deviceid']; 
	$login_key = $_POST['enc'];
	$score = $_POST['score'];
	$ranktype = $_POST['ranktype'];
	$wantget = $_POST['start'];
	$count = $_POST['count'];
	$origin = $_POST['origin'];
	$hash = $_POST['check'];
    $nowtime = time();
    
	if ( $counts < 10 || $counts > 100 )
		$counts = 10;
	
	switch($cmd)
	{
		case 1:	// 점수 저장 처리
		case 11:	// 그냥 랭킹 리스트만 얻기 처리
			if ( $cmd == 1 )
			    $check = md5( $gametype. $deviceid . $score . $ranktype . $login_key);
			else 
			    $check = md5( $gametype. $deviceid . $ranktype . $login_key);
		
		    if($check == $hash) 
			{
				Global $db;
				$db = ConnectToDB();
				
				if ( !$db )
				{
					echo '{ "stat" : "0", "message" : "Cannot connect DB."}';
					die();	 
				}
				
			   	if ( !SelectDB($db) )
				{
					echo '{ "stat" : "0", "message" : "Cannot select DB."}';
					mysql_close($db);
					die();	 
				}
		
				$login_key = mysql_real_escape_string($login_key, $db);
				$deviceid = mysql_real_escape_string($deviceid, $db);
				
				$query = "select * from tb_account where user_id='{$deviceid}' and login_key='{$login_key}';";
		    	$result = mysql_query($query);
		
				if ( !$result )
				{
					echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
					mysql_close($db);
					die();	 
				} 
				
				$num_results = mysql_num_rows($result);
		
				if ( $num_results == 1 )		// Check Success
				{
					$field = mysql_fetch_array($result);
					mysql_free_result($result);
					
					$query = "select idx,score from tb_rank where user_id='{$deviceid}' and game_idx='{$gametype}' and score_type={$ranktype};";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					if ( mysql_num_rows($result) < 1 )	// 점수 정보가 없으면 insert
					{
						if ( $field['nick_set'] == 1 )	// 이름이 셋팅되어 있으면 이름을, 그게 아니면 유저 인덱스로 이름 저장
							$query = "insert into tb_rank values (0, {$field['useridx']}, '{$deviceid}', '{$field['user_nick']}', '{$gametype}', {$ranktype}, {$score}, '0');";
						else
							$query = "insert into tb_rank values (0, {$field['useridx']}, '{$deviceid}', 'nonameuser_{$field['useridx']}', '{$gametype}', {$ranktype}, {$score}, '0');";
						
						$result = mysql_query($query);
				
						if ( !$result ) 
						{
							echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
							mysql_close($db);
							die();
						}
					}	// 정보가 있으면 update
					else 
					{
						$row = mysql_fetch_array($result);
						mysql_free_result($result);
						
						if ( $cmd == 1 )	// 단순 랭킹 얻기가 아니면 점수 업데이트
						{
													
							if ( $field['nick_set'] == 1 )	// 이름이 셋팅되어 있으면 이름을, 그게 아니면 유저 인덱스로 이름 저장
								$query = "update tb_rank set score ={$score},username='{$field['user_nick']}' where idx={$row['idx']};";
							else 
								$query = "update tb_rank set score ={$score},username='nonameuser_{$field['useridx']}' where idx={$row['idx']};";
								
							$result = mysql_query($query);
							
							if ( !$result ) 
							{
								echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
								mysql_close($db);
								die();
							}
						}
						else
							$score = $row['score'];
					}
					
					// 랭킹 리스트 얻기
					$query = "select count(idx) from tb_rank where score > {$score};";
					$result = mysql_query($query);
				
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
						
					$row = mysql_fetch_array($result);
					mysql_free_result( $result );
					
					// 내 랭킹 얻기
					$my_rank = $row['count(idx)'] + 1;

					// 랭킹 리스트 얻기
					if ( $origin == 0 )
					{
						if ( $wantget < 1 )
							$wantget = 0;
												
						$query = "SELECT score,username,user_id,facetype from tb_rank where game_idx='{$gametype}' and score_type={$ranktype} order by score desc limit {$wantget}, {$counts};";
					}
					else
					{
						$fromwantget = $my_rank + $wantget - 1;
						if  ($fromwantget < 1)
							$fromwantget = 0;
						
						$query = "SELECT score,username,user_id,facetype from tb_rank where game_idx='{$gametype}' and score_type={$ranktype} order by score desc limit {$fromwantget}, {$counts};";
					}
					
					$result = mysql_query($query);
				
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
				
					if ( $origin == 0 )					
						$start_rank = $wantget + 1;
					else
					{
						if ( $wantget + $my_rank < 1 )
							$start_rank = 1;
						else
							$start_rank = $wantget + $my_rank;
					}
				
					$resultstr = '';
					$resultstr .= '{"stat" : "1",';
					$resultstr .= '"my_rank" : "'.$my_rank.'",';
					$resultstr .= '"start_rank" : "'.$start_rank.'",';
					$resultstr .= '"message" : "'.$wantget.'",';
					$resultstr .= '"ranklists":[';
				
					$cnt = 0;
							
					while( $row = mysql_fetch_array($result) )
					{
						if ( $cnt != 0 )
							$resultstr .= ',';
						
						if ( $origin == 0 )					
							$rankval = $cnt + $wantget + 1;
						else
						{
							if ( $wantget + $my_rank < 1 )
								$add = 1;
							else
								$add = $wantget + $my_rank;
							
							$rankval = $cnt + $add;
						}
						
						$resultstr .= '{"_Rank" : "'.$rankval.'", "_Score" : "'.$row['score'].'", "_Name" : "'.$row['username'].'", "_UserID" : "'.$row['user_id'].'", "_FaceType" : "'.$row['facetype'].'" }';
						$cnt++;
					}
					
					$resultstr .= ']}';
					
					mysql_free_result( $result );
					
					echo $resultstr;
					mysql_close();
					die();
				}
				else 
				{				
					echo '{"stat" : "0", "message" : "Cannot find account. Checking Server again."}';
					mysql_close($db);
					die();	 
				}
			}
		break;
	}
 
	echo '{"stat" : "0", "message" : "Nothing To Do"}';
	die();
?>
