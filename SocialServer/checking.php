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

	$firsttime = $_POST['time'];
	$encryptkey = $_POST['enc'];
	$deviceid = $_POST['id'];
	$cmd = $_POST['cmd']; 
	$hash = $_POST['check']; 

//	$secretKey="cf79c9a3881a4ceb92cca703eefee1a3";// "GodAlwaysLovesUs!ThanksToGod!" 의 MD5 
	
    $nowtime = time();

	if ( $cmd == 333 )
	{
		$datetimetick = date("m/d/Y h:i:s A");
		
		echo '{"stat" : "1", "message" : "registered", "servertime" : "'.$datetimetick.'"}';
		die();	 
	}
	else 
	{
	    $check = md5( $firsttime. $secretKey ); 
	
	    if($encryptkey == $secretKey && $check == $hash) 
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
	
			$deviceid = mysql_real_escape_string($deviceid, $db);
	
			
			$query = "select * from tb_account where user_id='{$deviceid}';";
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
				
				$useridx = $field['useridx'];
				$newenc_idx = ($useridx % 10) + 1;
				
				$query = "select code from tb_encrypt where idx={$newenc_idx};";
		    	$result = mysql_query($query);
			
				$field = mysql_fetch_array($result);
				mysql_free_result($result);
				
				$retval = md5( $field['code'].$nowtime );
				
				$query = "update tb_account set login_key ='{$retval}' where useridx={$useridx};";
		    	$result = mysql_query($query);
				
				echo '{"stat" : "1", "message" : "updated", "secret" : "'.$retval.'"}';
				mysql_close($db);
				die();	 
			}
			else 
			{	// 계정 없으면 새로 만들기
				$query = "select max(useridx) from tb_account;";
		    	$result = mysql_query($query);
		
				if ( !$result )
				{
					echo '{"stat" : "0", "message" : "Query failed : '.mysql_error().'"}';
					mysql_close($db);
					die();	 
				} 
			
				$field = mysql_fetch_array($result);
				mysql_free_result($result);
						
				$query = "insert into tb_account values (0, '{$deviceid}', 'noname{$field[0]}', 'nothing', 0, '{\"nothing\" : \"0\"}');";
		    	$result = mysql_query($query);
				
				$useridx = mysql_insert_id($db);
				
				$query = "select code from tb_encrypt where idx={$useridx};";
		    	$result = mysql_query($query);
			
				$field = mysql_fetch_array($result);
				mysql_free_result($result);
				
				$retval = md5( $field['code'].$nowtime );
				
				$query = "update tb_account set login_key ='{$retval}' where useridx={$useridx};";
		    	$result = mysql_query($query);
				
				echo '{"stat" : "1", "message" : "registered", "secret" : "'.$retval.'"}';
				mysql_close($db);
				die();	 
			}
		}
	}

	echo '{"stat" : "0", "message" : "Nothing To Do"}';
	die();	 
?>
