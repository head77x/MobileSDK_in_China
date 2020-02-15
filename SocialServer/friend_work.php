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
	$ranktype = $_POST['ranktype']; 
	$login_key = $_POST['enc'];
	$count = $_POST['count'];
	$hash = $_POST['check'];
	
	$adddelfriend = $_POST['friend'];
	$addfriendname = $_POST['friendname'];
	
    $nowtime = time();
    
    $check = md5( $gametype . $deviceid . $login_key); 

    if($check == $hash) 
	{
		switch($cmd)
		{
			case 1:	// 내 친구 리스트 얻기
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

					$query = "select tb_friend.friend_id,tb_rankget.name,tb_rankget.score,tb_rankget.facetype,tb_rankget.rank from tb_friend inner join tb_rankget where tb_friend.user_id='{$deviceid}' and tb_friend.friend_id=tb_rankget.user_id and tb_rankget.gametype='{$gametype}' and tb_rankget.scoretype={$ranktype};";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					if ( mysql_num_rows($result) < 1 )	// 없으면 친구가 없음
					{
						echo '{"stat" : "1", "message" : "success", "nofriend" : "1"}';
						mysql_close($db);
						die();
					}
					else
					{
						$resultstr = '';
						$resultstr .= '{"stat" : "1",';
						$resultstr .= '"message" : "success",';
						$resultstr .= '"friendlists":[';
					
						$cnt = 0;
								
						while( $row = mysql_fetch_array($result) )
						{
							if ( $cnt != 0 )
								$resultstr .= ',';
							
							$resultstr .= '{"_UserID" : "'.$row['friend_id'].'", "_FaceType" : "'.$row['facetype'].'", "_Name" : "'.$row['name'].'", "_Score" : "'.$row['score'].'", "_Rank" : "'.$row['rank'].'" }';
							$cnt++;
						}
						
						$resultstr .= ']}';
						
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
		case 11:	// 추천 친구 리스트 얻기
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

					if ( $count < 10 || $count > 100 )
						$count = 10;

					$count *= 4;	// 4배의 갯수로 읽단 일거온다.
	
					$query = "select user_id,name,facetype,score,rank from tb_rankget where user_id!='{$deviceid}' and gametype='{$gametype}' and scoretype={$ranktype} order by rand() limit {$count};";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					if ( mysql_num_rows($result) < 1 )	// 없으면 요청할 친구가 없음
					{
						echo '{"stat" : "1", "message" : "success", "nofriend" : "1"}';
						mysql_close($db);
						die();
					}
					else
					{
						$query = "select friend_id from tb_friend where user_id='{$deviceid}';";
						$friendresult = mysql_query($query);
						
						if ( !$friendresult ) 
						{
							echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
							mysql_close($db);
							die();
						}
						
						$friendcnt = mysql_num_rows($friendresult);
	
						if ($friendcnt > 0)
						{
							$i = 0; 					
							while( $row = mysql_fetch_array($friendresult) )
							{
								$friendlist[$i] = $row['friend_id'];
								$i++;
							}
							
							mysql_free_result( $friendresult );
						}
						
						$resultstr = '';
						$resultstr .= '{"stat" : "1",';
						$resultstr .= '"message" : "success",';
						$resultstr .= '"friendlists":[';
					
						$cnt = 0;
								
						while( $row = mysql_fetch_array($result) )
						{
							$exist = false;
							for ($i = 0; $i < $friendcnt; $i++)
								if ( $friendlist[$i] == $row['user_id'] )
								{
									$exist = true;
									$i = $friendcnt;
								}
							
							if ( $exist == false && $cnt < $count )
							{
								if ( $cnt != 0 )
									$resultstr .= ',';
									
								$resultstr .= '{"_UserID" : "'.$row['user_id'].'", "_FaceType" : "'.$row['facetype'].'", "_Name" : "'.$row['name'].'", "_Score" : "'.$row['score'].'", "_Rank" : "'.$row['rank'].'" }';
								$cnt++;
								
								if ( $cnt >= $count )
									break;
							}
						}
						
						if ( $cnt == 0 )
							$resultstr .= '], "nofriend" : "1"}';
						else
							$resultstr .= ']}';
						
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
		case 111:	// 친구 리스트 추가
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

					$query = "select friend_id from tb_friend where user_id='{$deviceid}' and friend_id='{$adddelfriend}';";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().$query.'"}';
						mysql_close($db);
						die();
					}
					
					if ( mysql_num_rows($result) > 0 )	// 이미 등록된 친구임
					{
						echo '{"stat" : "0", "message" : "already friends", "alreadyfriend" : "1"}';
						mysql_close($db);
						die();
					}
					else
					{
						$query = "select useridx from tb_account where user_id='{$adddelfriend}';";
						$result = mysql_query($query);
						
						if ( !$result ) 
						{
							echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().$query.'"}';
							mysql_close($db);
							die();
						}
						
						if ( mysql_num_rows($result) < 1 )	// 이미 등록된 친구임
						{
							echo '{"stat" : "0", "message" : "not exist that friend '.$adddelfriend.'"}';
							mysql_close($db);
							die();
						}
						else
						{
							$query = "insert into tb_friend values (0,'{$deviceid}', '{$adddelfriend}', now());";
							$result = mysql_query($query);
							
							if ( !$result ) 
							{
								echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().$query.'"}';
								mysql_close($db);
								die();
							}
							
							$query = "select tb_friend.friend_id,tb_rankget.name,tb_rankget.score,tb_rankget.facetype,tb_rankget.rank from tb_friend inner join tb_rankget where tb_friend.user_id='{$deviceid}' and tb_friend.friend_id=tb_rankget.user_id and tb_rankget.gametype='{$gametype}' and tb_rankget.scoretype={$ranktype};";
							$result = mysql_query($query);
							
							if ( !$result ) 
							{
								echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().$query.'"}';
								mysql_close($db);
								die();
							}
							
							if ( mysql_num_rows($result) < 1 )	// 없으면 친구가 없음
							{
								echo '{"stat" : "1", "message" : "success", "nofriend" : "1"}';
								mysql_close($db);
								die();
							}
							else
							{
								$resultstr = '';
								$resultstr .= '{"stat" : "1",';
								$resultstr .= '"message" : "success",';
								$resultstr .= '"friendlists":[';
							
								$cnt = 0;
										
								while( $row = mysql_fetch_array($result) )
								{
									if ( $cnt != 0 )
										$resultstr .= ',';
									
									$resultstr .= '{"_UserID" : "'.$row['friend_id'].'", "_FaceType" : "'.$row['facetype'].'", "_Name" : "'.$row['name'].'", "_Score" : "'.$row['score'].'", "_Rank" : "'.$row['rank'].'" }';
									$cnt++;
								}
								
								$resultstr .= ']}';
								
								mysql_free_result( $result );
								
								echo $resultstr;
								mysql_close();
								die();
							}		 
						}
					}		 
				}
				else 
				{				
					echo '{"stat" : "0", "message" : "Cannot find account. Checking Server again."}';
					mysql_close($db);
					die();	 
				}
		break;	
		case 1111:	// 친구 리스트 삭제
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

					$query = "delete from tb_friend where user_id='{$deviceid}' and friend_id='{$adddelfriend}';";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().$query.'"}';
						mysql_close($db);
						die();
					}
							
					$query = "select tb_friend.friend_id,tb_rankget.name,tb_rankget.score,tb_rankget.facetype,tb_rankget.rank from tb_friend inner join tb_rankget where tb_friend.user_id='{$deviceid}' and tb_friend.friend_id=tb_rankget.user_id and tb_rankget.gametype='{$gametype}' and tb_rankget.scoretype={$ranktype};";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().$query.'"}';
						mysql_close($db);
						die();
					}
					
					if ( mysql_num_rows($result) < 1 )	// 없으면 친구가 없음
					{
						echo '{"stat" : "1", "message" : "success", "nofriend" : "1"}';
						mysql_close($db);
						die();
					}
					else
					{
						$resultstr = '';
						$resultstr .= '{"stat" : "1",';
						$resultstr .= '"message" : "success",';
						$resultstr .= '"friendlists":[';
					
						$cnt = 0;
								
						while( $row = mysql_fetch_array($result) )
						{
							if ( $cnt != 0 )
								$resultstr .= ',';
							
							$resultstr .= '{"_UserID" : "'.$row['friend_id'].'", "_FaceType" : "'.$row['facetype'].'", "_Name" : "'.$row['name'].'", "_Score" : "'.$row['score'].'", "_Rank" : "'.$row['rank'].'" }';
							$cnt++;
						}
						
						$resultstr .= ']}';
						
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