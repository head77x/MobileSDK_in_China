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

	$gametype = $_POST['gametype']; 
	$cmd = $_POST['cmd']; 
	$deviceid = $_POST['user'];
	$login_key = $_POST['enc'];
	$reward = $_POST['reward'];
	$hash = $_POST['check'];
	
    $nowtime = time();
    
    $check = md5( $gametype . $deviceid . $reward . $login_key); 

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

		$gametype = mysql_real_escape_string($gametype, $db);
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
			switch($cmd)
			{
				case 1:	// 쿠폰 확인
					$field = mysql_fetch_array($result);
					mysql_free_result($result);
		
					$query = "select * from tb_reward where couponcode='{$reward}';";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					if ( mysql_num_rows($result) < 1 )	// 없으면 쿠폰 자체 없음
					{
						echo '{"stat" : "0", "message" : "Cannot find coupon code '.$query.'"}';
						mysql_close($db);
						die();
					}
					
					$row = mysql_fetch_array($result);
					mysql_free_result($result);
		
					switch ( $row['repeatuse'] )
					{
						case 0:	// 1회만 사용 가능
							if ($row['alreadyuse']==1)
							{
								echo '{"stat" : "0", "message" : "Already used"}';
								mysql_close($db);
								die();
							}
							
							if (strcmp($row['useforid'],"0") != 0 && strcmp($row['useforid'],$deviceid) != 0)	// 1회만 사용하는것 중 플래그에 따라 지정한 유저만 사용
							{
								echo '{"stat" : "0", "message" : "Cannot use for this ID"}';
								mysql_close($db);
								die();
							}
						break;
						case 1:	// 계속 사용 가능하다면, 해당 유저가 사용했었는지 체크
							$query = "select * from tb_rewardused where couponcode='{$reward}' and useduser='{$deviceid}';";
							$result = mysql_query($query);
							
							if ( !$result ) 
							{
								echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
								mysql_close($db);
								die();
							}
							
							if ( mysql_num_rows($result) > 0 )	// 있다면, 이미 사용했던 유저임
							{
								echo '{"stat" : "0", "message" : "Already used"}';
								mysql_close($db);
								die();
							}
						break;
					}
		
					$query = "update tb_reward set alreadyuse=1,usecount=usecount+1 where couponcode='{$reward}';";
					$result = mysql_query($query);

					$query = "insert into tb_rewardused values (0, '{$reward}', '{$deviceid}');";
					$result = mysql_query($query);
										
					echo '{"stat" : "1", "coupontype" : "'.$row['coupontype'].'", "message" : "Success use"}';
					mysql_close($db);
					die();
				break;
				case 11:	// 추천용 개인 쿠폰 확인 또는 생성. usecount 를 받아서 다른 유저가 내 추천코드를 사용했는지 확인 가능
					$field = mysql_fetch_array($result);
					mysql_free_result($result);
		
					$query = "select * from tb_reward where useforid='{$deviceid}' and coupontype=1;";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					if ( mysql_num_rows($result) < 1 )	// 없으면 해당 유저의 신규 쿠폰 등록
					{
					    $nowtime = time();
						$addmore = rand(910,3859);
						
						$newcoupon = $addmore.$nowtime;

						$query = "insert into tb_reward values (0, '{$newcoupon}', 1, 0, '{$deviceid}',1,0,10 );";
						$result = mysql_query($query);
						
						if ( !$result ) 
						{
							echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
							mysql_close($db);
							die();
						}

						$query = "insert into tb_rewardused values (0, '{$newcoupon}', '{$deviceid}');";
						$result = mysql_query($query);

						if ( !$result ) 
						{
							echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
							mysql_close($db);
							die();
						}
						
						echo '{"stat" : "1", "message" : "success", "coupon" : "'.$newcoupon.'", "usecount" : "0"}';
						mysql_close($db);
						die();
					}
					
					$row = mysql_fetch_array($result);
					mysql_free_result($result);
					
					echo '{"stat" : "1", "message" : "success", "coupon" : "'.$row['couponcode'].'", "usecount" : "'.$row['usecount'].'", "maxuse" : "'.$row['maxcount'].'"}';
					mysql_close($db);
					die();
				break;
			}
		}
		else 
		{				
			echo '{"stat" : "0", "message" : "Cannot find account. Checking Server again."}';
			mysql_close($db);
			die();	 
		}
	}

	echo '{"stat" : "0", "message" : "Nothing To Do"}';
	die();
?>