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
	$id = $_POST['id'];
	$password = $_POST['password'];
	$login_key = $_POST['enc'];
	$title = $_POST['title'];
	$description = $_POST['desc'];
	$notice_del = $_POST['remove_notice'];
	$user_nick = $_POST['username'];
	$repeatflag = $_POST['repeatcode'];
	$coupontype = $_POST['coupontype'];
	$maxuse = $_POST['maxuse'];
	
	$hash = $_POST['check'];
	
    $nowtime = time();
    
	switch($cmd)
	{
		case 1:	// 로그인 처리
		    $check = md5( $id. $password . $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$password = mysql_real_escape_string($password, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}';";
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
								
					$passcomp = md5( $field['password'] );
					
					if ( strcmp($passcomp,$password) != 0 )
					{
						echo '{"stat" : "0", "message" : "password wrong"}';
						mysql_close($db);
						die();
					}	 
					
					$retval = md5( $field['password'].time() );
					
					$query = "update tb_admin set loginkey='{$retval}' where id='{$id}';";
			    	$result = mysql_query($query);
			
					echo '{"stat" : "1", "message" : "success", "secret" : "'.$retval.'"}';
					mysql_close($db);
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
		case 2:	// 공지 추가
		    $check = md5( $id. $title . $description . $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}' and loginkey='{$login_key}';";
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
					$query = "insert into tb_news values (0,'{$title}', '{$description}', now());";
			    	$result = mysql_query($query);
					
					if ( !$result )
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();	 
					} 
			
					echo '{"stat" : "1", "message" : "success"}';
					mysql_close($db);
					die();	 
				}
				else 
				{				
					echo '{"stat" : "0", "message" : "Cannot find account. Checking Server again.'.$id.$login_key.'"}';
					mysql_close($db);
					die();	 
				}
			}
		break;
		case 22:	// 공지 삭제
		    $check = md5( $id. $notice_del . $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}' and loginkey='{$login_key}';";
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
					$query = "delete from tb_news where newsidx={$notice_del};";
			    	$result = mysql_query($query);
					
					if ( !$result )
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();	 
					} 
			
					echo '{"stat" : "1", "message" : "success"}';
					mysql_close($db);
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
		case 222:	// 공지 리스트
		    $check = md5( $id. $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}' and loginkey='{$login_key}';";
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

					$query = "select newsidx,title,description,whendate from tb_news;";
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
			}				
		break;
		case 3:	// 메세지 읽기
		    $check = md5( $id. $user_nick . $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}' and loginkey='{$login_key}';";
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
					$query = "select user_id from tb_account where user_nick='{$user_nick}';";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					$msgcode = 0;
					
					if ( mysql_num_rows($result) < 1 )	// 없으면 계정이 없음
					{
						echo '{"stat" : "0", "message" : "Cannot find account"}';
						mysql_close($db);
						die();	 
					}

					$field = mysql_fetch_array($result);
					mysql_free_result($result);

					$user_id = $field['user_id']; 	
	
					$query = "select msgidx,title,description,whendate from tb_message where userid='{$user_id}';";
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
			}
		break;
		case 33:	// 메시지 추가
		    $check = md5( $id. $title . $description . $user_nick . $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}' and loginkey='{$login_key}';";
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
					$query = "select user_id from tb_account where user_nick='{$user_nick}';";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					$msgcode = 0;
					
					if ( mysql_num_rows($result) < 1 )	// 없으면 계정이 없음
					{
						echo '{"stat" : "0", "message" : "Cannot find account"}';
						mysql_close($db);
						die();	 
					}

					$field = mysql_fetch_array($result);
					mysql_free_result($result);

					$user_id = $field['user_id']; 	
					
					$query = "insert into tb_message values (0, '{$user_id}', '{$title}', '{$description}', now());";
			    	$result = mysql_query($query);
					
					if ( !$result )
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();	 
					} 

					echo '{"stat" : "1", "message" : "success"}';
					mysql_close($db);
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
		case 333:	// 메세지 삭제
		    $check = md5( $id. $notice_del . $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}' and loginkey='{$login_key}';";
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
					$query = "delete from tb_message where msgidx={$notice_del};";
			    	$result = mysql_query($query);
					
					if ( !$result )
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();	 
					} 
			
					echo '{"stat" : "1", "message" : "success"}';
					mysql_close($db);
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
		case 4:	// 공지 추가
		    $check = md5( $id. $title . $description . $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}' and loginkey='{$login_key}';";
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
					$query = "insert into tb_eventurl values (0,'{$title}', '{$description}', now());";
			    	$result = mysql_query($query);
					
					if ( !$result )
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();	 
					} 
			
					echo '{"stat" : "1", "message" : "success"}';
					mysql_close($db);
					die();	 
				}
				else 
				{				
					echo '{"stat" : "0", "message" : "Cannot find account. Checking Server again.'.$id.$login_key.'"}';
					mysql_close($db);
					die();	 
				}
			}
		break;
		case 44:	// 공지 삭제
		    $check = md5( $id. $notice_del . $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}' and loginkey='{$login_key}';";
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
					$query = "delete from tb_eventurl where eventidx={$notice_del};";
			    	$result = mysql_query($query);
					
					if ( !$result )
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();	 
					} 
			
					echo '{"stat" : "1", "message" : "success"}';
					mysql_close($db);
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
		case 444:	// URL 이벤트 리스트
		    $check = md5( $id. $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}' and loginkey='{$login_key}';";
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

					$query = "select eventidx,title,url,whendate from tb_eventurl;";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					if ( mysql_num_rows($result) < 1 )	// 없으면 뉴스가 없음
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
			}				
		break;
		case 5: // 리워드 셋팅
		    $check = md5( $id. $user_nick . $coupontype . $maxuse . $login_key); 
		
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
		
				$id = mysql_real_escape_string($id, $db);
				$login_key = mysql_real_escape_string($login_key, $db);
				
				$query = "select * from tb_admin where id='{$id}' and loginkey='{$login_key}';";
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
					if ( strcmp($user_nick, "0") != 0 )	// 유저 이름이 있으면, 유저 체크
					{
						$query = "select * from tb_account where user_nick='{$user_nick}';";
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
							echo '{"stat" : "0", "message" : "Cannot find user"}';
							mysql_close($db);
							die();	 
						}
					}
					
				    $nowtime = time();
					$addmore = rand(910,3859);
					
					$newcoupon = $addmore.$nowtime;
					
					$query = "insert into tb_reward values (0, '{$newcoupon}', {$repeatflag}, 0, '{$user_nick}',{$coupontype},0,{$maxuse} );";
					$result = mysql_query($query);
					
					if ( !$result ) 
					{
						echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
						mysql_close($db);
						die();
					}
					
					echo '{"stat" : "1", "message" : "success", "coupon" : "'.$newcoupon.'"}';
					mysql_close($db);
					die();
				}
				else 
				{				
					echo '{"stat" : "0", "message" : "Cannot find account. Checking Server again.'.$id.$login_key.'"}';
					mysql_close($db);
					die();	 
				}
			}
		break;
	}
 
	echo '{"stat" : "0", "message" : "Nothing To Do"}';
	die();
?>
