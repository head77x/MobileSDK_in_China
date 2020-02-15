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
	$id = $_POST['username'];
	$password = $_POST['password'];
	$login_type = $_POST['type']; 
	$deviceid = $_POST['deviceid']; 
	$login_key = $_POST['loginkey'];
	$userdata = $_POST['userdata'];
	$username = $_POST['usernick'];
	$hash = $_POST['check'];
	
    $nowtime = time();
    
	switch($cmd)
	{
		case 1:	// 로그인 처리
		    $check = md5( $id. $password . $login_type . $deviceid . $login_key); 
		
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
								
					echo '{"stat" : "200", "message" : "success", "id_maked" : "'.$field['nick_set'].'", "user_nickname" : "'.$field['user_nick'].'", "datas" : ['.$field['userdata'].']}';
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
		case 11:	// 데이터 저장 처리
		    $check = md5( $id. $password . $login_type . $deviceid . $userdata . $login_key); 
		
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
				$deviceid = mysql_real_escape_string($deviceid, $db);
				$userdata = mysql_real_escape_string($userdata, $db);
				
				$query = "update tb_account set userdata='{$userdata}' where user_id='{$deviceid}' and login_key='{$login_key}';";
		    	$result = mysql_query($query);
		
				if ( !$result )
				{
					echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
					mysql_close($db);
					die();	 
				} 
				
				echo '{"stat" : "200", "message" : "success"}';
				mysql_close($db);
				die();	 
			}
		break;
		case 22:	// 유저 이름 셋팅 처리
		    $check = md5( $deviceid . $username . $login_key); 
		
		    if($check == $hash) 
			{
				if ( strpos( $username, "noname" ) !== false )
				{
					echo '{"stat" : "0", "message" : "Already exists nickname", "reason" : "2" }';
					die();	 
				}
					
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
				$username = mysql_real_escape_string($username, $db);
				
				$query = "select * from tb_account where user_id='{$deviceid}' and login_key='{$login_key}' and nick_set=0;";
		    	$result = mysql_query($query);
		
				if ( !$result )
				{
					echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
					mysql_close($db);
					die();	 
				} 
				
				$num_results = mysql_num_rows($result);
		
				if ( $num_results < 1 )		// Check Failed
				{
					echo '{"stat" : "0", "message" : "Cannot update nickname", "reason" : "1" }';
					mysql_close($db);
					die();	 
				}
								
				$query = "select * from tb_account where user_nick='{$username}';";
		    	$result = mysql_query($query);
		
				if ( !$result )
				{
					echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
					mysql_close($db);
					die();	 
				} 
				
				$num_results = mysql_num_rows($result);
		
				if ( $num_results > 0 )		// Check Failed
				{
					echo '{"stat" : "0", "message" : "Already exists nickname - '.$username.'", "reason" : "2" }';
					mysql_close($db);
					die();	 
				}	
								
				$query = "update tb_account set user_nick='{$username}',nick_set=1 where user_id='{$deviceid}' and login_key='{$login_key}' and nick_set=0;";
		    	$result = mysql_query($query);
		
				if ( !$result )
				{
					echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
					mysql_close($db);
					die();	 
				} 
				
				echo '{"stat" : "1", "message" : "success", "user_nickname" : "'.$username.'"}';
				mysql_close($db);
				die();	 
			}
		break;
	}
 
	echo '{"stat" : "0", "message" : "Nothing To Do"}';
	die();
?>
