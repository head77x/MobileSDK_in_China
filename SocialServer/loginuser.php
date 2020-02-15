<?php
function die2()
{
	mysql_close($db);
	die();
}



	$player_id = $_POST['username'];
	$player_pass = $_POST['password'];
	$hash = $_POST['check']; 

	$secretKey="Pinla3DEncryptCode"; 
    $real_hash = md5( $player_id . $player_pass . $secretKey); 

    if($real_hash == $hash) 
	{
		$db = mysql_connect('localhost:8289', 'pinlatester', 'pinla1234');

		if ( !$db )
		{
			echo '{"state" : "300", "message" : "Could not connect: '.mysql_error().'"}';
			die2();
		}
 
   		if ( !mysql_select_db('pinladb') )
		{
			echo '{"state" : "300", "message" : "Could not connect: '.mysql_error().'"}';
			die2();
		}
		
		$real_playerid = mysql_real_escape_string($player_id, $db);
		$real_playerpass = mysql_real_escape_string($player_pass, $db);

		$query = "select * from tb_account where username='{$real_playerid}' and password='{$real_playerpass}';";
    	$result = mysql_query($query);

		if ( !$result )
		{
			echo '{"state" : "300", "message" : "Query failed : '.mysql_error().'"}';
			die2();
		} 

		$num_results = mysql_num_rows($result);

		if ( $num_results == 1 )		// Check Success
		{
			$field = mysql_fetch_array($result);
			mysql_free_result($result);

			$loginkey = time();
			
			$query = "update tb_account set login_key='{$loginkey}' where useridx={$field['useridx']};";
    		$result = mysql_query($query);

			$query = "select * from avatar_factory where user_idx={$field['useridx']};";
    		$result = mysql_query($query);

			echo '{"state" : "200", "id" : "'.$field['useridx'].'", "key" : "'.$loginkey.'", "version" : "'.$field['saved_version'].
			'", "boy_edit" : "'.$field['boy_edit'].'", "girl_edit" : "'.$field['girl_edit'].'", "avatar_cnt" : "'.mysql_num_rows($result).'"';

			if ( mysql_num_rows($result) > 0 )
			{
				echo ', "avatar_info" : [';
				$cnt = 0;
				while($avatarinfo = mysql_fetch_array($result))
				{
					if ( $cnt > 0 )
						echo ', ';
					
					echo '{"idx" : "'.$avatarinfo['avatar_idx'].'",';
					echo '"order" : "'.$avatarinfo['order_state'].'"}';
					$cnt++;
				}
				
				echo ']}';
			}
			else 
			{
				echo '}';
			}
			
			mysql_free_result($result);
			die2();
		}
		else	// Cannot find player ID. need to make it
		{
			mysql_free_result($result);
			echo '{"state" : "300", "message" : "Cannot find account"}';
			die2();
		}
		
	}
	else
	{
		echo '{"state" : "300", "message" : "Parameters Error - Check Failed"}';
		die2();
	}

	mysql_close();
?>
