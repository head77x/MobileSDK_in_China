<?php
function die2()
{
	mysql_close($db);
	die();
}



	$player_id = $_POST['idx'];
	$player_pass = $_POST['key'];
	$avatar_data = $_POST['adt'];
	$wannadelete = $_POST['nde'];
	$delete_idx = $_POST['ndi'];
	$hash = $_POST['check']; 

	$secretKey="Pinla3DEncryptCode"; 
    $real_hash = md5( $player_id . $player_pass . $avatar_data . $secretKey); 

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
		$real_key = mysql_real_escape_string($player_pass, $db);

		$query = "select * from tb_account where useridx={$real_playerid} and login_key='{$real_key}';";
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

			if ( $wannadelete == 11 )
			{
				$query = "select avatar_idx from avatar_factory where user_idx={$real_playerid} and order_state=0 and avatar_idx={$delete_idx};";
	    		$result = mysql_query($query);
	
				if ( mysql_num_rows($result) == 1 )
				{
					$query = "delete from avatar_factory where user_idx={$real_playerid} and order_state=0 and avatar_idx={$delete_idx};";
		    		$result = mysql_query($query);
					
					$mainiconpath = ".\\orders\\iconorder_".$delete_idx.".png";
					unlink($mainiconpath);

					echo '{"state" : "200", "edit_type" : "30", "deleted" : "'.$delete_idx.'"}';
					
					die2();
				}
	    		
				echo '{"state" : "301", "message" : "Cannot find avatar"}';
				
				mysql_free_result($result);
				die2();
			}
			else 
			{
				$query = "select * from avatar_factory where user_idx={$real_playerid} and order_state=0;";
	    		$result = mysql_query($query);
	
				if ( mysql_num_rows($result) > 5 )
				{
					echo '{"state" : "301", "message" : "Exceed not yet order"}';
					die2();
				}
	
				$query = "insert into avatar_factory values (0, {$real_playerid},'{$avatar_data}',0);";
	    		$result = mysql_query($query);
	
	    		$newidx = mysql_insert_id($db);
	
				if ( $_FILES['img'] != null && is_uploaded_file($_FILES['img']['tmp_name']) )
				{
					$mainiconpath = ".\\orders\\iconorder_".$newidx.".png";
					move_uploaded_file( $_FILES['img']['tmp_name'], $mainiconpath );
				}
	    		
				echo '{"state" : "200", "edit_type" : "2", "new_ordered" : "'.$newidx.'", "data" : "'.$avatar_data.'"}';
				
				mysql_free_result($result);
				die2();
			}
		}
		else	// Cannot find player ID. need to make it
		{
			mysql_free_result($result);
			echo '{"state" : "300", "message" : "Cannot find avatar"}';
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
