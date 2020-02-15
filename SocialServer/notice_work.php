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
	$deviceid = $_POST['user'];
	$login_key = $_POST['enc'];
	$count = $_POST['count'];
	$hash = $_POST['check'];
	
	$delmsg = $_POST['msg'];
	
    $nowtime = time();
    
    $check = md5( $gametype . $deviceid . $login_key); 

    if($check == $hash) 
	{
		switch($cmd)
		{
			case 2:	// 업데이트 상황 얻기
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
					$field = mysql_fetch_array($result);
					mysql_free_result($result);

					$query = "select MAX(newsidx) from tb_news;";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					$newscode = 0;
					
					if ( mysql_num_rows($result) > 0 )	// 없으면 뉴스가 없음
					{
						$row = mysql_fetch_array($result);
						mysql_free_result($result);
						
						$newscode = $row[0];	
						
						if ($newscode < 1)
							$newscode = 0;
					}
					
					$query = "select MAX(msgidx) from tb_message where userid='{$deviceid}';";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					$msgcode = 0;
					if ( mysql_num_rows($result) > 0 )	// 없으면 메세지가 없음
					{
						$row = mysql_fetch_array($result);
						mysql_free_result($result);
						
						$msgcode = $row[0];	
						if ($msgcode < 1)
							$msgcode = 0;
											}
					
					$query = "select MAX(eventidx) from tb_eventurl;";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					$urlcode = 0;
					if ( mysql_num_rows($result) > 0 )	// 없으면 메세지가 없음
					{
						$row = mysql_fetch_array($result);
						mysql_free_result($result);
						
						$urlcode = $row[0];	
						if ($urlcode < 1)
							$urlcode = 0;
					}
					
					$resultstr = '';
					$resultstr .= '{"stat" : "1",';
					$resultstr .= '"message" : "success",';
					$resultstr .= '"newscode" : "'.$newscode.'",';
					$resultstr .= '"msgcode" : "'.$msgcode.'",';
					$resultstr .= '"eventcode" : "'.$urlcode.'"}';
					
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
			break;
			case 1:	// 일반 공지 리스트 얻기
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
					$newscode = 0;
					
					$field = mysql_fetch_array($result);
					mysql_free_result($result);

					$query = "select newsidx,title,description,whendate from tb_news limit {$count};";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					if ( mysql_num_rows($result) < 1 )	// 없으면 뉴스가 없음
					{
						echo '{"stat" : "1", "message" : "success", "nonews" : "1", "newscode" : "0" }';
						mysql_close($db);
						die();
					}
					else
					{
						$resultstr = '';
						$resultstr .= '{"stat" : "1",';
						$resultstr .= '"message" : "success",';
						$resultstr .= '"newslists":[';
					
						$cnt = 0;
								
						while( $row = mysql_fetch_array($result) )
						{
							if ( $cnt != 0 )
								$resultstr .= ',';
							
							$resultstr .= '{"_KeyCode" : "'.$row['newsidx'].'", "_Title" : "'.$row['title'].'", "_Desc" : "'.$row['description'].'", "_DateTime" : "'.$row['whendate'].'" }';
							if ( $row['newsidx'] > $newscode )
								$newscode = $row['newsidx'];
								
							$cnt++;
						}

						$resultstr .= '], "newscode" : "'.$newscode.'"}';
						
						mysql_free_result( $result );
						
						echo $resultstr;
						mysql_close();
						die();
					}		 
				}
				else 
				{				
					echo '{"stat" : "0", "message" : "Cannot find account. Checking Server again."}';
					mysql_close($db);
					die();	 
				}
		break;
		case 11:	// 메세지 리스트 얻기
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
				$field = mysql_fetch_array($result);
				mysql_free_result($result);

				$query = "select msgidx,title,description,whendate from tb_message where userid='{$deviceid}' limit {$count};";
				$result = mysql_query($query);
				
				if ( !$result ) 
				{
					echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
					mysql_close($db);
					die();
				}
				
				$msgcode = 0;
				
				if ( mysql_num_rows($result) < 1 )	// 없으면 메세지가 없음
				{
					echo '{"stat" : "1", "message" : "success", "nomsg" : "1", "msgcode" : "0" }';
					mysql_close($db);
					die();
				}
				else
				{
					$resultstr = '';
					$resultstr .= '{"stat" : "1",';
					$resultstr .= '"message" : "success",';
					$resultstr .= '"msglists":[';
				
					$cnt = 0;
							
					while( $row = mysql_fetch_array($result) )
					{
						if ( $cnt != 0 )
							$resultstr .= ',';
						
						$resultstr .= '{"_KeyCode" : "'.$row['msgidx'].'", "_Title" : "'.$row['title'].'", "_Desc" : "'.$row['description'].'", "_DateTime" : "'.$row['whendate'].'" }';
						if ( $row['msgidx'] > $msgcode )
							$msgcode = $row['msgidx'];
						$cnt++;
					}

					$resultstr .= '], "msgcode" : "'.$msgcode.'"}';
					
					mysql_free_result( $result );
					
					echo $resultstr;
					mysql_close();
					die();
				}		 
			}
			else 
			{				
				echo '{"stat" : "0", "message" : "Cannot find account. Checking Server again."}';
				mysql_close($db);
				die();	 
			}
		break;
		case 1111:	// 이벤트 URL 리스트 얻기
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
				$field = mysql_fetch_array($result);
				mysql_free_result($result);

				$query = "select eventidx,title,url,whendate from tb_eventurl limit {$count};";
				$result = mysql_query($query);
				
				if ( !$result ) 
				{
					echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
					mysql_close($db);
					die();
				}
				
				$eventcode = 0;
				
				if ( mysql_num_rows($result) < 1 )	// 없으면 메세지가 없음
				{
					echo '{"stat" : "1", "message" : "success", "noevent" : "1", "eventcode" : "0" }';
					mysql_close($db);
					die();
				}
				else
				{
					$resultstr = '';
					$resultstr .= '{"stat" : "1",';
					$resultstr .= '"message" : "success",';
					$resultstr .= '"eventlists":[';
				
					$cnt = 0;
							
					while( $row = mysql_fetch_array($result) )
					{
						if ( $cnt != 0 )
							$resultstr .= ',';
						
						$resultstr .= '{"_KeyCode" : "'.$row['eventidx'].'", "_Title" : "'.$row['title'].'", "_Desc" : "'.$row['url'].'", "_DateTime" : "'.$row['whendate'].'" }';
						if ( $row['eventidx'] > $eventcode )
							$eventcode = $row['eventidx'];
						$cnt++;
					}

					$resultstr .= '], "eventcode" : "'.$eventcode.'"}';
					
					mysql_free_result( $result );
					
					echo $resultstr;
					mysql_close();
					die();
				}		 
			}
			else 
			{				
				echo '{"stat" : "0", "message" : "Cannot find account. Checking Server again."}';
				mysql_close($db);
				die();	 
			}
		break;
		case 111:	// 메세지 삭제
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
				$field = mysql_fetch_array($result);
				mysql_free_result($result);

				$query = "delete from tb_message where userid='{$deviceid}' and msgidx={$delmsg};";
				$result = mysql_query($query);
				
				if ( !$result ) 
				{
					echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().$query.'"}';
					mysql_close($db);
					die();
				}

				$query = "select msgidx,title,desc,when,MAX(msgidx) from tb_message where userid='{$deviceid}' limit {$count};";
				$result = mysql_query($query);
				
				if ( !$result ) 
				{
					echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
					mysql_close($db);
					die();
				}
				
				if ( mysql_num_rows($result) < 1 )	// 없으면 메세지가 없음
				{
					echo '{"stat" : "1", "message" : "success", "nomsg" : "1", "msgcode" : "0" }';
					mysql_close($db);
					die();
				}
				else
				{
					$resultstr = '';
					$resultstr .= '{"stat" : "1",';
					$resultstr .= '"message" : "success",';
					$resultstr .= '"msglists":[';
				
					$cnt = 0;
							
					while( $row = mysql_fetch_array($result) )
					{
						if ( $cnt != 0 )
							$resultstr .= ',';
						
						$resultstr .= '{"_KeyCode" : "'.$row['msgidx'].'", "_Title" : "'.$row['title'].'", "_Desc" : "'.$row['desc'].'", "_DateTime" : "'.$row['when'].'" }';
						$cnt++;
					}

					$resultstr .= '], "msgcode" : "'.$row["MAX(msgidx)"].'"}';
					
					mysql_free_result( $result );
					
					echo $resultstr;
					mysql_close();
					die();
				}		 
			}
			else 
			{				
				echo '{"stat" : "0", "message" : "Cannot find account. Checking Server again."}';
				mysql_close($db);
				die();	 
			}
		break;	
		}
	}

	echo '{"stat" : "0", "message" : "Nothing To Do"}';
	die();
?>