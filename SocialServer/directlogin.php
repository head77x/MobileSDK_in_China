<?php
	require_once( 'MegoLib/MegoDBMan.php' );

	$db = null;
	$accdb = null;

function get_real_ip() {
    $ip = "";
    if (!empty($_SERVER['HTTP_CLIENT_IP']))  //check ip from share internet
        $ip=$_SERVER['HTTP_CLIENT_IP'];
    else if (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))  //to check ip is pass from proxy
    {
        $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
	}
    else if (!empty($_SERVER['HTTP_X_FORWARDED']))
        $ip=$_SERVER['HTTP_X_FORWARDED'];
    else if (!empty($_SERVER['HTTP_FORWARDED_FOR']))
        $ip=$_SERVER['HTTP_FORWARDED_FOR'];
    else if (!empty($_SERVER['HTTP_FORWARDED']))
        $ip=$_SERVER['HTTP_FORWARDED'];
    else
        $ip=$_SERVER['REMOTE_ADDR'];
	
	$b = ereg ("^([0-9]{1,3}.){3,3}[0-9]{1,3}", $ip, $array) ;
	
	if ( $b && count($array)>=1)
		$ip=$array[0];
	else
		$ip=$_SERVER['REMOTE_ADDR'];
		
    return trim($ip);
}

/*
function CheckClient($id,$password)
{
	Global $db;
	$real_ip = get_real_ip();
	$db = ConnectToDB();
	
	if ( !$db )
	{
		return -1;
	}
 
   	if ( !SelectDB($db) )
	{
		return -2;
	}

	$query = "select user_count from server_users where serverindex={$idx} and serverip='{$real_ip}';";
	$result = mysql_query($query,$db);

	if ( !$result )
	{
		return -3;
	}
	
	$num_results = mysql_num_rows($result);

	if ( $num_results < 1 )
	{
		return -4;
	}

	$cmsinfo = mysql_fetch_array($result);
	mysql_free_result($result);

	return $cmsinfo['user_count'];
}
*/ 
    $secretKey="GodAlwaysLovesMeAndUs!BrandonIsGenius!";
	$request_command = $_POST['CMD'];
	
	switch( $request_command )
	{
		case 16:	// 맵 서버 정보 요청
			$mapnum = $_POST['MIX'];
			$hash = $_POST['check'];
			
		    $real_hash = md5($mapnum.$secretKey); 
		    
		    if($real_hash != $hash)
		    {
		    	echo '{ "Result" : "-1", "Message" : "Wrong Informations - '.$real_hash.'-'.$hash.'" }';
				die2();
			}
			
			$db = ConnectToDB();
			
			if ( !$db )
			{
				echo '{ "Result" : "-20", "Message" : "Cannot connect db"}';	 
				die2();
			}
		 
		   	if ( !SelectDB($db) )
			{
				echo '{ "Result" : "-21", "Message" : "Cannot select db"}';	 
				die2();
			}

			$mapnum = mysql_real_escape_string($mapnum, $db);
			
			$query = "select * from mapserver where Map_index=".$mapnum.";";
			$result = mysql_query($query,$db);

			if ( !$result )
			{
				echo '{ "Result" : "-2", "Message" : "Query error: '.mysql_error($db).'"}';	 
				die2();
			}
			
			$num_results = mysql_num_rows($result);

			if ( $num_results != 1 )	// first cannot find account
			{
				echo '{ "Result" : "-3", "Message" : "Not exist map: '.$mapnum.'"}';	 
				die2();
			}

			$mapserver = mysql_fetch_array($result);
			mysql_free_result($result);
			
			echo '{ "Result" : "0",';
				
			echo '"MapIndex" : "'.$mapserver['Map_index'].'",';
			echo '"Server" : "'.$mapserver['Server_IP'].'",';
			echo '"Status" : "'.$mapserver['status'].'",';
			echo '"Users" : "'.$mapserver['user_cnt'].'",';
			
			echo '"Message" : "Success Login" }';
																							
			die2();
		break;
		case 14:	// 로그인 요청
				$user_id = $_POST['ID'];
				$password = $_POST['PW'];
				$password2 = $_POST['PW2'];
				$server_index = $_POST['SV'];
			    $hash = $_POST['check'];

			    $real_hash = md5($user_id.$password.$password2.$server_index.$secretKey); 

			    if($real_hash != $hash)
			    {
			    	echo '{ "Result" : "-2", "Message" : "Wrong Informations - '.$real_hash.'-'.$hash.'" }';
					die2();
				}
				
				$db = ConnectToDB();
				
				if ( !$db )
				{
					echo '{ "Result" : "-20", "Message" : "Cannot connect db"}';	 
					die2();
				}
			 
			   	if ( !SelectDB($db) )
				{
					echo '{ "Result" : "-20", "Message" : "Cannot select db"}';	 
					die2();
				}

				$user_id = mysql_real_escape_string($user_id, $db); 
				$password = mysql_real_escape_string($password, $db);
				$password2 = mysql_real_escape_string($password2, $db);
				$server_index = mysql_real_escape_string($server_index, $db);
								
				$query = "select * from accounts where id='".$user_id."' and password='".$password."';";
				$result = mysql_query($query,$db);

								
				if ( !$result )
				{
					echo '{ "Result" : "-2", "Message" : "Query error: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$num_results = mysql_num_rows($result);

				if ( $num_results < 1 )	// first cannot find account
				{
					$retval = UseAPI("login", $user_id, $password2, 0);	// 7k7q 사용시
//					$retval = UseAPI_KR("22", $user_id, $password, get_real_ip());	// 한국 R2F
					
					$jdata = json_decode($retval,true);

					if ( $jdata['status'] == 0 )	// 계정 얻어옴 실패 - 기타 처리는 메세지로 전달 후 처리한다.
					{
						echo '{ "Result" : "-7", "Message" : "'.$jdata['msg']['message'].'"}';	 
						die2();
					}

					// Create new account
					$query = "insert into accounts values (0,'".$user_id."','".$password."',0,0,0,0, ".time().",".time().",0,0,0,0,now(),now(),0);";									
					$result = mysql_query($query,$db);
					
					if ( !$result )	// insert가 않되었다면, 이미 계정이 있으므로, 비밀번호만 업데이트
					{
						$query = "update accounts set password={$password} where user_idx={$newidx} and id='{$user_id}';";									
						$result = mysql_query($query,$db);
						
						$query = "insert into log_table values (0,{$newidx},0,2,'{$user_id}','password changed',now());";									
						$result = mysql_query($query,$db);
					}
					else 
					{
						$lastidx = mysql_insert_id();
						
						$query = "insert into log_table values (0,{$lastidx},0,1,'{$user_id}','new account created',now());";									
						$result = mysql_query($query,$db);
					}
					
					$query = "select * from accounts where id='".$user_id."' and password='".$password."';";
					$result = mysql_query($query,$db);
					
					if ( !$result )
					{
						echo '{ "Result" : "-9", "Message" : "Querry error: '.mysql_error($db).'"}';	 
						die2();
					}
				}

				// Success get user informations				
				$userinfo = mysql_fetch_array($result);
				mysql_free_result($result);
								
				$query = "select * from tired_table where user_idx=".$userinfo['user_idx'].";";
				$result = mysql_query($query,$db);
			
				if ( !$result )
				{
					echo '{ "Result" : "-13", "Message" : "Get tired_table error: '.mysql_error($db).'"}';	 
					die2();
				}
			
				$num_results = mysql_num_rows($result);
				
				if ( $num_results > 0 )	// check and need to update
				{
					$tiredinfo = mysql_fetch_array($result);
					mysql_free_result($result);
					
					$my_energy = $tiredinfo['my_energy'];	// 남은 플레이 시간
					$overtimed = $tiredinfo['over_timed'];	// 
					
					$nowtime = time();
					$pasttime = ($nowtime - $userinfo['logout_time']);   // 휴식한 시간
			
					$rest_energy = ($pasttime * 75)/100; // 1.25 배 휴식해야 1 감소함 
				}
				else
					{
						$query = "insert into tired_table values (".$userinfo['user_idx'].",0,0);";
						$result = mysql_query($query,$db);
						
						if ( !$result )	// cannot find ID in account db
						{
							echo '{ "Result" : "-11", "Message" : "Cannot set tired table: '.mysql_error($db).'"}';	 
							die2();
						}
						
						// 14400 18000 48    240 300 0.8
						
						$rest_energy = 0;
						$my_energy = 0;
					}
			
			    if ($rest_energy >= $my_energy)	// 이미 플레이 시간 이상 휴식했다면, 문제 없음
			    {
			        $overtimed = 0;
			        $my_energy = 0;
			    }
			    else
				if ( $rest_energy > 0 )		// 휴식시간만큼 플레이시간 감소
			    {
			        $my_energy -= $rest_energy;
					
					if ( $my_energy >= 14400 )
						$overtimed = 1;
			    }
			
				// 이미 오버타임했다면, 완전히 휴식때까지 게임 실행 불가.
				if ( $overtime == 1 && $my_energy > 0 )	
				{
					echo '{ "Result" : "-12", "Message" : "Too tired to play~", "Rest", "'.$my_energy.'" }';	 
					die2();
				}
								
				$query = "update tired_table set my_energy=".$my_energy.", over_timed=".$overtimed." where user_idx=".$userinfo['user_idx'].";";
				$result = mysql_query($query,$db);
			
				if ( !$result )
				{
					echo '{ "Result" : "-14", "Message" : "Update tired_table error: '.$overtimed.'"}';	 
					die2();
				}
								
				if ( $userinfo['character_idx'] != 0 )	// If have character... need to get informations
				{
					$query = "select * from characters where user_idx=".$userinfo['user_idx']." and chr_idx=".$userinfo['character_idx'].";";
					$result = mysql_query($query,$db);
					
					if ( !$result )
					{
						echo '{ "Result" : "-13", "Message" : "Cannot get character: '.mysql_error($db).'"}';	 
						die2();
					}
					
					$num_results = mysql_num_rows($result);
			
					if ( $num_results < 1 )	// first cannot find account
					{
						echo '{ "Result" : "-14", "Message" : "He have no characters" }';	 
						die2();
					}
										
					$character_info = mysql_fetch_array($result);
					mysql_free_result($result);
					
					$query = "select * from character_subinfo where chr_idx=".$userinfo['character_idx'].";";
					$result = mysql_query($query,$db);
					
					if ( !$result )
					{
						echo '{ "Result" : "-15", "Message" : "Cannot get character subinfo: '.mysql_error($db).'"}';	 
						die2();
					}
					
					$num_results = mysql_num_rows($result);
			
					if ( $num_results < 1 )	// first cannot find account
					{
						echo '{ "Result" : "-14", "Message" : "He have no character subinfo" }';	 
						die2();
					}
					
					$character_subinfo = mysql_fetch_array($result);
					mysql_free_result($result);
				}								
								
				$connectserver = rand(1,65535);
				$hackcode = rand(3859,65535);
				
				// game_playing_status 는 최초 로그인시에만 바뀐다. hackcode는 게임 서버 이동시 계속 변동되므로, 여기서 저장 X.
				$query = "update accounts set game_playing_status=".$connectserver.
						",last_login=".time().",gamecash=gamecash+add_gamecash,login_date=now() where user_idx=".$userinfo['user_idx'].";";
				$result = mysql_query($query,$db);
			
				if ( !$result )	// cannot find ID in account db
				{
					echo '{ "Result" : "-8", "Message" : "Cannot update login: '.mysql_error($db).'"}';	 
					die2();
				}
								
				$query = "insert into log_table values (0,{$userinfo['user_idx']},0,3,'{$user_id}','start game',now());";									
				$result = mysql_query($query,$db);
																
				echo '{ "Result" : "0",';
				
				$realcash = $userinfo['gamecash'] + $userinfo['add_gamecash'];
				
				echo '"idx" : "'.$userinfo['user_idx'].'",';
				echo '"logincode" : "'.$connectserver.'",';
				echo '"hackcode" : "'.$hackcode.'",';
				echo '"cash" : "'.$realcash.'",';
				echo '"energy" : "'.$my_energy.'",';
				echo '"chridx" : "'.$userinfo['character_idx'].'",';
				
				if ( $userinfo['character_idx'] != 0 )	// If have character... need to get informations
				{
					echo '"name" : "'.$character_info['name'].'",';
					echo '"realm" : "'.$character_info['realm'].'",';
					echo '"race" : "'.$character_info['race'].'",';
					echo '"gender" : "'.$character_info['gender'].'",';
					
					echo '"wearing" : "'.$character_info['wearing'].'",';
					
					echo '"str" : "'.$character_info['str'].'",';
					echo '"know" : "'.$character_info['know'].'",';
					echo '"agi" : "'.$character_info['agi'].'",';
					echo '"con" : "'.$character_info['con'].'",';
					echo '"amg" : "'.$character_info['amg'].'",';
					echo '"intel" : "'.$character_info['intel'].'",';
					echo '"bel" : "'.$character_info['bel'].'",';
					echo '"hlt" : "'.$character_info['hlt'].'",';
					echo '"lastpos" : { "map" : "'.$character_info['last_pos_map'].'", "x" : "'.$character_info['last_pos_x'].'", "y" : "'.$character_info['last_pos_y'].'" , "z" : "'.$character_info['last_pos_z'].'" , "wm" : "'.$character_info['last_wantmap'].'" , "wz" : "'.$character_info['last_comezone'].'" },';
					echo '"portalpos" : { "map" : "'.$character_info['portal_map'].'", "x" : "'.$character_info['portal_x'].'", "y" : "'.$character_info['portal_y'].'" , "z" : "'.$character_info['portal_z'].'" },';
					echo '"respawn_map" : "'.$character_info['respawn_map'].'",';
					
					echo '"class" : "'.$character_subinfo['class'].'",';
					echo '"job" : "'.$character_subinfo['job'].'",';
					echo '"rank" : "'.$character_subinfo['rank'].'",';
					echo '"league" : "'.$character_subinfo['league'].'",';
					echo '"age" : "'.$character_subinfo['age'].'",';
					echo '"family" : "'.$character_subinfo['family'].'",';
					echo '"pk_stat" : "'.$character_subinfo['pk_stat'].'",';
					echo '"gm_point" : "'.$character_subinfo['gm_point'].'",';
					echo '"fame" : "'.$character_subinfo['fame'].'",';
					echo '"illness" : "'.$character_subinfo['illness'].'",';
					echo '"wp" : "'.$character_subinfo['wp'].'",';
					echo '"hp" : "'.$character_subinfo['hp'].'",';
					echo '"hp_max" : "'.$character_subinfo['hp_max'].'",';
					echo '"mp" : "'.$character_subinfo['mp'].'",';
					echo '"mp_max" : "'.$character_subinfo['mp_max'].'",';
					
					if ( $character_subinfo['hp'] > 0 )
					{
						$sp = $character_subinfo['sp'];
						$sp = $sp + $pasttime;
					
						if ( $sp > 100 )
							$sp = 100;
					}
					
					echo '"sp" : "'.$sp.'",';
					echo '"sp_max" : "'.$character_subinfo['sp_max'].'",';
					echo '"level" : "'.$character_subinfo['level'].'",';
					echo '"xp" : "'.$character_subinfo['xp'].'",';
					echo '"skill_xp" : "'.$character_subinfo['skill_xp'].'",';
					echo '"min_ap" : "'.$character_subinfo['min_ap'].'",';
					echo '"max_ap" : "'.$character_subinfo['max_ap'].'",';
					echo '"dp" : "'.$character_subinfo['dp'].'",';
					echo '"distmin_ap" : "'.$character_subinfo['distmin_ap'].'",';
					echo '"distmax_ap" : "'.$character_subinfo['distmax_ap'].'",';
					echo '"dist_dp" : "'.$character_subinfo['dist_dp'].'",';
					echo '"lucky" : "'.$character_subinfo['lucky'].'",';
					echo '"fire" : "'.$character_subinfo['fire'].'",';
					echo '"ice" : "'.$character_subinfo['ice'].'",';
					echo '"force" : "'.$character_subinfo['force'].'",';
					echo '"poison" : "'.$character_subinfo['poison'].'",';
					echo '"lightning" : "'.$character_subinfo['lightning'].'",';
					echo '"dark" : "'.$character_subinfo['dark'].'",';
					echo '"holy" : "'.$character_subinfo['holy'].'",';
				}
			
				echo '"Message" : "Success Login" }';
																							
				die2();
		break;
		case 15:	// 캐릭터 생성
				$user_id = $_POST['ID'];
				$logincode = $_POST['LK'];
				$hackcode = $_POST['HK'];
				$nickname = $_POST['NM'];
				$realm = $_POST['RLM'];
				$raceselect = $_POST['RCE'];
				$gender = $_POST['GEN'];
			   	$hash = $_POST['check'];

			    $strength = $_POST['STR'];
			    $knowledge = $_POST['KNO'];
			    $agility = $_POST['AGI'];
			    $concentrate = $_POST['CON'];
			    $aiming = $_POST['AMG'];
			    $intelligence = $_POST['INT'];
			    $believe = $_POST['BEL'];
			    $health = $_POST['HEL'];

				$blessed = $strength+$knowledge+$agility+$concentrate+$aiming+$intelligence+$believe+$health;

			    $real_hash = md5($user_id.$hackcode.$believe.$nickname.$secretKey); 
							    				
			    if($real_hash != $hash)
			    {
			    	echo '{ "Result" : "-1", "Message" : "Wrong Informations - '.$real_hash.'-'.$hash.'" }';
					die2();
				}
				
			    if($blessed < 77 || $blessed > 79)
			    {
			    	echo '{ "Result" : "-4", "Message" : "Wrong Blessed" }';
					die2();
				}

				if ( $strength < 6 || $knowledge < 6 || $agility < 6 || $concentrate < 6 || $aiming < 6 || $intelligence < 6 || $believe < 6 || $health < 6 )
				{
					$strength = 9;
					$knowledge = 9;
					$agility = 9;
					$concentrate = 9;
					$aiming = 9;
					$intelligence = 9;
					$believe = 9;
					$health = 9;
				}

				if ( $strength > 18 || $knowledge > 18 || $agility > 18 || $concentrate > 17|| $aiming > 17 || $intelligence  > 17|| $believe > 17|| $health > 17)
				{
					$strength = 9;
					$knowledge = 9;
					$agility = 9;
					$concentrate = 9;
					$aiming = 9;
					$intelligence = 9;
					$believe = 9;
					$health = 9;
				}

			    if(strlen($nickname)<2)
			    {
			    	echo '{ "Result" : "-5", "Message" : "Too Short Name" }';
					die2();
				}
				
				$db = ConnectToDB();
				
				if ( !$db )
				{
					echo '{ "Result" : "-20", "Message" : "Cannot connect db"}';	 
					die2();
				}
			 
			   	if ( !SelectDB($db) )
				{
					echo '{ "Result" : "-21", "Message" : "Cannot select db"}';	 
					die2();
				}


				$user_id = mysql_real_escape_string($user_id, $db); 
				$nickname = mysql_real_escape_string($nickname, $db); 

				$query = "select * from accounts where id='".$user_id."' and game_playing_status=".$logincode.";";
				$result = mysql_query($query,$db);

								
				if ( !$result )
				{
					echo '{ "Result" : "-2", "Message" : "Query error: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$num_results = mysql_num_rows($result);
				
				if ( $num_results < 1 )
				{
					echo '{ "Result" : "-11", "Message" : "Cannot find account :'.$user_id.'"}';	 
					die2();
				}
				
				// Success get user informations				
				$userinfo = mysql_fetch_array($result);
				mysql_free_result($result);
				
				if ( $userinfo['character_idx'] > 0 )	// already exist character
				{
					echo '{ "Result" : "-3", "Message" : "Already have character"}';	 
					die2();
				}
				
				$query = "select * from characters where name='".$nickname."';";
				$result = mysql_query($query,$db);
					
				if ( !$result )
				{
					echo '{ "Result" : "-6", "Message" : "Name Query error: '.mysql_error($db).'"}';	 
					die2();
				}

				$num_results = mysql_num_rows($result);
								
				if ( $num_results > 0 )
				{
					echo '{ "Result" : "-7", "Message" : "Already exist name"}';	 
					die2();
				}				
				
				$realm = mysql_real_escape_string($realm, $db); 
				$raceselect = mysql_real_escape_string($raceselect, $db); 
				$gender = mysql_real_escape_string($gender, $db); 
				$strength = mysql_real_escape_string($strength, $db); 
				$knowledge = mysql_real_escape_string($knowledge, $db); 
				$agility = mysql_real_escape_string($agility, $db); 
				$concentrate = mysql_real_escape_string($concentrate, $db); 
				$aiming = mysql_real_escape_string($aiming, $db); 
				$intelligence = mysql_real_escape_string($intelligence, $db); 
				$believe = mysql_real_escape_string($believe, $db); 
				$health = mysql_real_escape_string($health, $db); 
												
				$query = "insert into characters values (0,".$userinfo['user_idx'].",'".$nickname."',".$realm.",".$raceselect.",".$gender.",0,'','[\"100\"]','',0,0,0,3000, 3000,-4, 0,0,0,0, 6,".$strength.",".$knowledge.",".$agility.
						",".$concentrate.",".$aiming.",".$intelligence.",".$believe.",".$health.");";
															
				$result = mysql_query($query,$db);
				
				if ( !$result )	// cannot find ID in account db
				{
					echo '{ "Result" : "-8", "Message" : "Cannot make new character: '.$query.'--'.mysql_error($db).'"}';	 
					die2();
				}
								
				$lastidx = mysql_insert_id();
				
				$max_hp = 50 + $health * 10;
				$max_mp = 10 + $believe * 10;
				
				$query = "insert into character_subinfo values ({$lastidx},0,0,0,0,0,0,0,0,0, 0,100,{$max_hp},{$max_hp},{$max_mp},{$max_mp},100,100,1,0, '',4,6,6,0,0,0,0,0,0,0,0,0,0, 0);";		// fame, 							
				$result = mysql_query($query,$db);
								
				if ( !$result )	// cannot find ID in account db
				{
					echo '{ "Result" : "-9", "Message" : "Cannot make new character subinfo: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$query = "update accounts set character_idx=".$lastidx." where user_idx=".$userinfo['user_idx'].";";									
				$result = mysql_query($query,$db);
								
				if ( !$result )	// cannot find ID in account db
				{
					echo '{ "Result" : "-10", "Message" : "Cannot update new character subinfo: '.$query.'--'.mysql_error($db).'"}';	 
					die2();
				}
				
				echo '{ "Result" : "0", "chridx" : "'.$lastidx.'","Message" : "Success Login" }';
				die2();
				
		break;
		case 33:	// 캐릭터 임시 생성
				$user_id = $_POST['ID'];
				$logincode = $_POST['LK'];
				$hackcode = $_POST['HK'];
			   	$hash = $_POST['check'];

			    $real_hash = md5($user_id.$hackcode.$secretKey); 
							    				
			    if($real_hash != $hash)
			    {
			    	echo '{ "Result" : "-1", "Message" : "Wrong Informations - '.$real_hash.'-'.$hash.'" }';
					die2();
				}

			    $strength = $_POST['STR'];
			    $knowledge = $_POST['KNO'];
			    $agility = $_POST['AGI'];
			    $concentrate = $_POST['CON'];
			    $aiming = $_POST['AMG'];
			    $intelligence = $_POST['INT'];
			    $believe = $_POST['BEL'];
			    $health = $_POST['HEL'];

				$blessed = $strength+$knowledge+$agility+$concentrate+$aiming+$intelligence+$believe+$health;
								
				$db = ConnectToDB();
				
				if ( !$db )
				{
					echo '{ "Result" : "-20", "Message" : "Cannot connect db"}';	 
					die2();
				}
			 
			   	if ( !SelectDB($db) )
				{
					echo '{ "Result" : "-21", "Message" : "Cannot select db"}';	 
					die2();
				}


				$user_id = mysql_real_escape_string($user_id, $db); 
				$nickname = mysql_real_escape_string($nickname, $db); 

				$query = "select * from accounts where id='".$user_id."' and game_playing_status=".$logincode.";";
				$result = mysql_query($query,$db);

								
				if ( !$result )
				{
					echo '{ "Result" : "-2", "Message" : "Query error: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$num_results = mysql_num_rows($result);
				
				if ( $num_results < 1 )
				{
					echo '{ "Result" : "-11", "Message" : "Cannot find account :'.$user_id.'"}';	 
					die2();
				}
				
				// Success get user informations				
				$userinfo = mysql_fetch_array($result);
				mysql_free_result($result);
				
				if ( $userinfo['character_idx'] > 0 )	// already exist character
				{
					echo '{ "Result" : "-3", "Message" : "Already have character"}';	 
					die2();
				}
				
				$query = "select * from characters where name='".$nickname."';";
				$result = mysql_query($query,$db);
					
				if ( !$result )
				{
					echo '{ "Result" : "-6", "Message" : "Name Query error: '.mysql_error($db).'"}';	 
					die2();
				}

				$num_results = mysql_num_rows($result);
								
				if ( $num_results > 0 )
				{
					echo '{ "Result" : "-7", "Message" : "Already exist name"}';	 
					die2();
				}				
				
				$realm = mysql_real_escape_string($realm, $db); 
				$raceselect = mysql_real_escape_string($raceselect, $db); 
				$gender = mysql_real_escape_string($gender, $db); 
				$strength = mysql_real_escape_string($strength, $db); 
				$knowledge = mysql_real_escape_string($knowledge, $db); 
				$agility = mysql_real_escape_string($agility, $db); 
				$concentrate = mysql_real_escape_string($concentrate, $db); 
				$aiming = mysql_real_escape_string($aiming, $db); 
				$intelligence = mysql_real_escape_string($intelligence, $db); 
				$believe = mysql_real_escape_string($believe, $db); 
				$health = mysql_real_escape_string($health, $db); 
												
				$query = "insert into characters values (0,".$userinfo['user_idx'].",'".$nickname."',".$realm.",".$raceselect.",".$gender.",0,'','[\"100\"]','',0,0,0,1001, 1001,-4, 0,0,0,0, 6,".$strength.",".$knowledge.",".$agility.
						",".$concentrate.",".$aiming.",".$intelligence.",".$believe.",".$health.");";
															
				$result = mysql_query($query,$db);
				
				if ( !$result )	// cannot find ID in account db
				{
					echo '{ "Result" : "-8", "Message" : "Cannot make new character: '.$query.'--'.mysql_error($db).'"}';	 
					die2();
				}
								
				$lastidx = mysql_insert_id();
				
				$max_hp = 50 + $health * 10;
				$max_mp = 10 + $believe * 10;
				
				$query = "insert into character_subinfo values ({$lastidx},0,0,0,0,0,0,0,0,0, 0,100,{$max_hp},{$max_hp},{$max_mp},{$max_mp},100,100,1,0, '',4,6,6,0,0,0,0,0,0,0,0,0,0, 0);";		// fame, 							
				$result = mysql_query($query,$db);
								
				if ( !$result )	// cannot find ID in account db
				{
					echo '{ "Result" : "-9", "Message" : "Cannot make new character subinfo: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$query = "update accounts set character_idx=".$lastidx." where user_idx=".$userinfo['user_idx'].";";									
				$result = mysql_query($query,$db);
								
				if ( !$result )	// cannot find ID in account db
				{
					echo '{ "Result" : "-10", "Message" : "Cannot update new character subinfo: '.$query.'--'.mysql_error($db).'"}';	 
					die2();
				}
				
				echo '{ "Result" : "0", "chridx" : "'.$lastidx.'","Message" : "Success Login" }';
				die2();
				
		break;
		
		case 17:	// 웨이포인트 얻기
				$user_id = $_POST['ID'];
				$logincode = $_POST['LK'];
				$hackcode = $_POST['HK'];
			   	$hash = $_POST['check'];
								
			    $real_hash = md5($user_id.$hackcode.$logincode.$secretKey); 
							    				
			    if($real_hash != $hash)
			    {
			    	echo '{ "Result" : "-1", "Message" : "Wrong Informations - '.$real_hash.'-'.$hash.'" }';
					die2();
				}
				
				$db = ConnectToDB();
				
				if ( !$db )
				{
					echo '{ "Result" : "-20", "Message" : "Cannot connect db"}';	 
					die2();
				}
			 
			   	if ( !SelectDB($db) )
				{
					echo '{ "Result" : "-21", "Message" : "Cannot select db"}';	 
					die2();
				}

				$user_id = mysql_real_escape_string($user_id, $db); 
				$logincode = mysql_real_escape_string($logincode, $db); 
				$hackcode = mysql_real_escape_string($hackcode, $db); 
				
				$query = "select * from accounts where id='".$user_id."' and game_playing_status=".$logincode.";";
				$result = mysql_query($query,$db);
								
				if ( !$result )
				{
					echo '{ "Result" : "-2", "Message" : "Query error: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$num_results = mysql_num_rows($result);
				
				if ( $num_results < 1 )
				{
					echo '{ "Result" : "-11", "Message" : "Cannot find account :'.$user_id.'"}';	 
					die2();
				}
				
				// Success get user informations				
				$userinfo = mysql_fetch_array($result);
				mysql_free_result($result);
				
				$query = "select * from waypoint where user_idx=".$userinfo['character_idx'].";";
				$result = mysql_query($query,$db);

				$num_results = mysql_num_rows($result);
				
				if ( $num_results < 1 )
				{
					echo '{ "Result" : "0", "Message" : "Not yet register", "Datas" : "0,"}';	 
					die2();
				}

				// Success get user informations				
				$waypoint = mysql_fetch_array($result);
				mysql_free_result($result);

				echo '{ "Result" : "0", "Message" : "OK", "Datas" : "'.$waypoint['remembered'].'"}';				
				die2();
		break;
		case 18:	// 웨이포인트 저장
				$user_id = $_POST['ID'];
				$logincode = $_POST['LK'];
				$hackcode = $_POST['HK'];
				$saved = $_POST['SV'];
			   	$hash = $_POST['check'];
								
			    $real_hash = md5($user_id.$hackcode.$logincode.$saved.$secretKey); 
							    				
			    if($real_hash != $hash)
			    {
			    	echo '{ "Result" : "-1", "Message" : "Wrong Informations - '.$real_hash.'-'.$hash.'" }';
					die2();
				}
				
				$db = ConnectToDB();
				
				if ( !$db )
				{
					echo '{ "Result" : "-20", "Message" : "Cannot connect db"}';	 
					die2();
				}
			 
			   	if ( !SelectDB($db) )
				{
					echo '{ "Result" : "-21", "Message" : "Cannot select db"}';	 
					die2();
				}

				$user_id = mysql_real_escape_string($user_id, $db); 
				$logincode = mysql_real_escape_string($logincode, $db); 
				$hackcode = mysql_real_escape_string($hackcode, $db); 
				$saved = mysql_real_escape_string($saved, $db); 
				
				$query = "select * from accounts where id='".$user_id."' and game_playing_status=".$logincode.";";
				$result = mysql_query($query,$db);
								
				if ( !$result )
				{
					echo '{ "Result" : "-2", "Message" : "Query error: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$num_results = mysql_num_rows($result);
				
				if ( $num_results < 1 )
				{
					echo '{ "Result" : "-11", "Message" : "Cannot find account :'.$user_id.'"}';	 
					die2();
				}
				
				// Success get user informations				
				$userinfo = mysql_fetch_array($result);
				mysql_free_result($result);
				
				$query = "update waypoint set remembered='".$saved."' where user_idx=".$userinfo['character_idx'].";";
				$result = mysql_query($query,$db);

				if ( mysql_affected_rows($result) < 1 )
				{
					$query = "insert into waypoint values (".$userinfo['character_idx'].", '".$saved."');";
					$result = mysql_query($query,$db);

					if ( $num_results < 1 )
					{
						echo '{ "Result" : "-12", "Message" : "Cannot insert :'.$user_id.'"}';	 
						die2();
					}
				}
				
				echo '{ "Result" : "0", "Message" : "OK"}';				
				die2();
				break;
/*		
		case 17:	// amount 얻기
				$user_id = $_POST['ID'];
				$password = $_POST['PW'];
			    $hash = $_POST['check'];

			    $real_hash = md5($user_id.$password.$secretKey); 

			    if($real_hash != $hash)
			    {
			    	echo '{ "Result" : "-1", "Message" : "Wrong Informations - '.$real_hash.'-'.$hash.'" }';
					die2();
				}
				
				$db = ConnectToDB();
				
				if ( !$db )
				{
					echo '{ "Result" : "-2", "Message" : "Cannot connect db"}';	 
					die2();
				}
			 
			   	if ( !SelectDB($db) )
				{
					echo '{ "Result" : "-2", "Message" : "Cannot select db"}';	 
					die2();
				}

				$user_id = mysql_real_escape_string($user_id, $db); 
				$password = mysql_real_escape_string($password, $db);
/*				
				$retval = UseAPI("login", $user_id, $password);
					
				$jdata = json_decode($retval,true);

				if ( $jdata['status'] == 0 )	// 계정 얻어옴 실패
				{
					echo '{ "Result" : "-4", "Message" : "'.$retval.'"}';	 
					die2();
				}
*				
				// Success get user informations
				$retval = UseAPI("checkamount", $user_id, $password,0);
								
				$amountret = json_decode($retval,true);

				if ( $amountret['status'] == 0 )	// 계정 얻어옴 실패
				{
					echo '{ "Result" : "-5", "Message" : "'.$retval.'"}';	 
					die2();
				}
				
				$amount = $amountret['msg']['amount'];
																
				echo '{ "Result" : "0",';
				
				echo '"cash" : "'.$amount.'",';
			
				echo '"Message" : "Success Get Amount" }';
																							
				die2();
		break; 
		case 18:	// 포인트 사용하기
				$user_id = $_POST['ID'];
				$password = $_POST['PW'];
				$usecash = $_POST['CN'];
			    $hash = $_POST['check'];

			    $real_hash = md5($user_id.$password.$usecash.$secretKey); 

			    if($real_hash != $hash)
			    {
			    	echo '{ "Result" : "-1", "Message" : "Wrong Informations - '.$real_hash.'-'.$hash.'" }';
					die2();
				}
				
				$db = ConnectToDB();
				
				if ( !$db )
				{
					echo '{ "Result" : "-2", "Message" : "Cannot connect db"}';	 
					die2();
				}
			 
			   	if ( !SelectDB($db) )
				{
					echo '{ "Result" : "-2", "Message" : "Cannot select db"}';	 
					die2();
				}

				$user_id = mysql_real_escape_string($user_id, $db); 
				$password = mysql_real_escape_string($password, $db);
/*				
				$retval = UseAPI("login", $user_id, $password, 0);
					
				$jdata = json_decode($retval,true);

				if ( $jdata['status'] == 0 )	// 계정 얻어옴 실패
				{
					echo '{ "Result" : "-4", "Message" : "'.$retval.'"}';	 
					die2();
				}
				
//				$dna = $jdata['msg']['dna'];
*										
				// Success get user informations
				$retval = UseAPI("exchange", $user_id, $password, $usecash);
								
				$amountret = json_decode($retval,true);

				if ( $amountret['status'] == 0 )	// 계정 얻어옴 실패
				{
					echo '{ "Result" : "-4", "Message" : "'.$retval.'"}';	 
					die2();
				}
				
				$spend = $amountret['msg']['spend'];
				$amount = $amountret['msg']['amount'];
																
				echo '{ "Result" : "0",';
				
				echo '"cash" : "'.$amount.'",';
				echo '"spend" : "'.$spend.'",';
			
				echo '"Message" : "'.$retval.'" }';
																							
				die2();
		break;
 */
		case 54:	// 로그인 요청
				$user_id = $_POST['ID'];
				$password = $_POST['PW'];
				$platform = $_POST['PF'];
				$platformkey = $_POST['PFKEY'];
				$server_index = $_POST['SV'];
			    $hash = $_POST['check'];

			    $real_hash = md5($user_id.$password.$platform.$server_index.$secretKey); 

			    if($real_hash != $hash)
			    {
			    	echo '{ "Result" : "-2", "Message" : "Wrong Informations - '.$real_hash.'-'.$hash.'" }';
					die2();
				}
				
				$db = ConnectToDB();
				
				if ( !$db )
				{
					echo '{ "Result" : "-20", "Message" : "Cannot connect db"}';	 
					die2();
				}
			 
			   	if ( !SelectDB($db) )
				{
					echo '{ "Result" : "-20", "Message" : "Cannot select db"}';	 
					die2();
				}

				$user_id = mysql_real_escape_string($user_id, $db); 
				$password = mysql_real_escape_string($password, $db);
				$platform = mysql_real_escape_string($platform, $db);
				$platformkey = mysql_real_escape_string($platformkey, $db);
				$server_index = mysql_real_escape_string($server_index, $db);
								
				$retval = UseAPI_Platform($platform, $platformkey, $server_index, "login", $user_id, $password, 0);	// 7k7q 사용시
				//					$retval = UseAPI("login", $user_id, $password2, 0);	// 7k7q 사용시
				//					$retval = UseAPI_KR("22", $user_id, $password, get_real_ip());	// 한국 R2F
				
				$jdata = json_decode($retval,true);

				if ( $jdata['status'] == 0 )	// 계정 얻어옴 실패 - 기타 처리는 메세지로 전달 후 처리한다.
				{
					echo '{ "Result" : "-7", "Message" : "'.$jdata['message'].'"}';	 
					die2();
				}

				// 이미 로그인 된 경우이므로, 아이디만 기준으로 계정 얻기
				$query = "select * from accounts where id='".$user_id."';";
				$result = mysql_query($query,$db);
				
				if ( !$result )
				{
					echo '{ "Result" : "-9", "Message" : "Querry error: '.mysql_error($db).'"}';	 
					die2();
				}

				$num_results = mysql_num_rows($result);
				
				if ( $num_results < 1 )	// 계정 생성 필요
				{
					// Create new account
					$query = "insert into accounts values (0,'".$user_id."','".$password."',0,0,0,0, ".time().",".time().",0,0,0,0,now(),now(),0);";									
					$result = mysql_query($query,$db);

					$lastidx = mysql_insert_id();

					$query = "insert into log_table values (0,0,0,1,'{$user_id}','new account created',now());";									
					$result = mysql_query($query,$db);
					
					$query = "select * from accounts where id='".$user_id."';";
					$result = mysql_query($query,$db);
					
					if ( !$result )
					{
						echo '{ "Result" : "-9", "Message" : "Querry error: '.mysql_error($db).'"}';	 
						die2();
					}
				}
				
				// Success get user informations				
				$userinfo = mysql_fetch_array($result);
				mysql_free_result($result);
								
				$query = "select * from tired_table where user_idx=".$userinfo['user_idx'].";";
				$result = mysql_query($query,$db);
			
				if ( !$result )
				{
					echo '{ "Result" : "-13", "Message" : "Get tired_table error: '.mysql_error($db).'"}';	 
					die2();
				}
			
				$num_results = mysql_num_rows($result);
				
				if ( $num_results > 0 )	// check and need to update
				{
					$tiredinfo = mysql_fetch_array($result);
					mysql_free_result($result);
					
					$my_energy = $tiredinfo['my_energy'];	// 남은 플레이 시간
					$overtimed = $tiredinfo['over_timed'];	 
					
					$nowtime = time();
					$pasttime = ($nowtime - $userinfo['logout_time']);   // 휴식한 시간
			
					$rest_energy = ($pasttime * 75)/100; // 1.25 배 휴식해야 1 감소함 
				}
				else
					{
						$query = "insert into tired_table values (".$userinfo['user_idx'].",0,0);";
						$result = mysql_query($query,$db);
						
						if ( !$result )	// cannot find ID in account db
						{
							echo '{ "Result" : "-11", "Message" : "Cannot set tired table: '.mysql_error($db).'"}';	 
							die2();
						}
						
						// 14400 18000 48    240 300 0.8
						
						$rest_energy = 0;
						$my_energy = 0;
					}
			
			    if ($rest_energy >= $my_energy)	// 이미 플레이 시간 이상 휴식했다면, 문제 없음
			    {
			        $overtimed = 0;
			        $my_energy = 0;
			    }
			    else
				if ( $rest_energy > 0 )		// 휴식시간만큼 플레이시간 감소
			    {
			        $my_energy -= $rest_energy;
					
					if ( $my_energy >= 14400 )
						$overtimed = 1;
			    }
			
				// 이미 오버타임했다면, 완전히 휴식때까지 게임 실행 불가.
				if ( $overtime == 1 && $my_energy > 0 )	
				{
					echo '{ "Result" : "-12", "Message" : "Too tired to play~", "Rest", "'.$my_energy.'" }';	 
					die2();
				}
								
				$query = "update tired_table set my_energy=".$my_energy.", over_timed=".$overtimed." where user_idx=".$userinfo['user_idx'].";";
				$result = mysql_query($query,$db);
			
				if ( !$result )
				{
					echo '{ "Result" : "-14", "Message" : "Update tired_table error: '.$overtimed.'"}';	 
					die2();
				}
								
				if ( $userinfo['character_idx'] != 0 )	// If have character... need to get informations
				{
					$query = "select * from characters where user_idx=".$userinfo['user_idx']." and chr_idx=".$userinfo['character_idx'].";";
					$result = mysql_query($query,$db);
					
					if ( !$result )
					{
						echo '{ "Result" : "-13", "Message" : "Cannot get character: '.mysql_error($db).'"}';	 
						die2();
					}
					
					$num_results = mysql_num_rows($result);
			
					if ( $num_results < 1 )	// first cannot find account
					{
						echo '{ "Result" : "-14", "Message" : "He have no characters" }';	 
						die2();
					}
										
					$character_info = mysql_fetch_array($result);
					mysql_free_result($result);
					
					$query = "select * from character_subinfo where chr_idx=".$userinfo['character_idx'].";";
					$result = mysql_query($query,$db);
					
					if ( !$result )
					{
						echo '{ "Result" : "-15", "Message" : "Cannot get character subinfo: '.mysql_error($db).'"}';	 
						die2();
					}
					
					$num_results = mysql_num_rows($result);
			
					if ( $num_results < 1 )	// first cannot find account
					{
						echo '{ "Result" : "-14", "Message" : "He have no character subinfo" }';	 
						die2();
					}
					
					$character_subinfo = mysql_fetch_array($result);
					mysql_free_result($result);
				}								
								
				$connectserver = rand(1,65535);
				$hackcode = rand(3859,65535);
				
				// game_playing_status 는 최초 로그인시에만 바뀐다. hackcode는 게임 서버 이동시 계속 변동되므로, 여기서 저장 X.
				$query = "update accounts set game_playing_status=".$connectserver.
						",last_login=".time().",gamecash=gamecash+add_gamecash,login_date=now() where user_idx=".$userinfo['user_idx'].";";
				$result = mysql_query($query,$db);
			
				if ( !$result )	// cannot find ID in account db
				{
					echo '{ "Result" : "-8", "Message" : "Cannot update login: '.mysql_error($db).'"}';	 
					die2();
				}
								
				$query = "insert into log_table values (0,{$userinfo['user_idx']},0,3,'{$user_id}','start game',now());";									
				$result = mysql_query($query,$db);
																
				echo '{ "Result" : "0",';
				
				$realcash = $userinfo['gamecash'] + $userinfo['add_gamecash'];
				
				echo '"idx" : "'.$userinfo['user_idx'].'",';
				echo '"logincode" : "'.$connectserver.'",';
				echo '"hackcode" : "'.$hackcode.'",';
				echo '"cash" : "'.$realcash.'",';
				echo '"energy" : "'.$my_energy.'",';
				echo '"chridx" : "'.$userinfo['character_idx'].'",';
				
				if ( $userinfo['character_idx'] != 0 )	// If have character... need to get informations
				{
					echo '"name" : "'.$character_info['name'].'",';
					echo '"realm" : "'.$character_info['realm'].'",';
					echo '"race" : "'.$character_info['race'].'",';
					echo '"gender" : "'.$character_info['gender'].'",';
					
					echo '"wearing" : "'.$character_info['wearing'].'",';
					
					echo '"str" : "'.$character_info['str'].'",';
					echo '"know" : "'.$character_info['know'].'",';
					echo '"agi" : "'.$character_info['agi'].'",';
					echo '"con" : "'.$character_info['con'].'",';
					echo '"amg" : "'.$character_info['amg'].'",';
					echo '"intel" : "'.$character_info['intel'].'",';
					echo '"bel" : "'.$character_info['bel'].'",';
					echo '"hlt" : "'.$character_info['hlt'].'",';
					echo '"lastpos" : { "map" : "'.$character_info['last_pos_map'].'", "x" : "'.$character_info['last_pos_x'].'", "y" : "'.$character_info['last_pos_y'].'" , "z" : "'.$character_info['last_pos_z'].'" , "wm" : "'.$character_info['last_wantmap'].'" , "wz" : "'.$character_info['last_comezone'].'" },';
					echo '"portalpos" : { "map" : "'.$character_info['portal_map'].'", "x" : "'.$character_info['portal_x'].'", "y" : "'.$character_info['portal_y'].'" , "z" : "'.$character_info['portal_z'].'" },';
					echo '"respawn_map" : "'.$character_info['respawn_map'].'",';
					
					echo '"class" : "'.$character_subinfo['class'].'",';
					echo '"job" : "'.$character_subinfo['job'].'",';
					echo '"rank" : "'.$character_subinfo['rank'].'",';
					echo '"league" : "'.$character_subinfo['league'].'",';
					echo '"age" : "'.$character_subinfo['age'].'",';
					echo '"family" : "'.$character_subinfo['family'].'",';
					echo '"pk_stat" : "'.$character_subinfo['pk_stat'].'",';
					echo '"gm_point" : "'.$character_subinfo['gm_point'].'",';
					echo '"fame" : "'.$character_subinfo['fame'].'",';
					echo '"illness" : "'.$character_subinfo['illness'].'",';
					echo '"wp" : "'.$character_subinfo['wp'].'",';
					echo '"hp" : "'.$character_subinfo['hp'].'",';
					echo '"hp_max" : "'.$character_subinfo['hp_max'].'",';
					echo '"mp" : "'.$character_subinfo['mp'].'",';
					echo '"mp_max" : "'.$character_subinfo['mp_max'].'",';
					
					if ( $character_subinfo['hp'] > 0 )
					{
						$sp = $character_subinfo['sp'];
						$sp = $sp + $pasttime;
					
						if ( $sp > 100 )
							$sp = 100;
					}
					
					echo '"sp" : "'.$sp.'",';
					echo '"sp_max" : "'.$character_subinfo['sp_max'].'",';
					echo '"level" : "'.$character_subinfo['level'].'",';
					echo '"xp" : "'.$character_subinfo['xp'].'",';
					echo '"skill_xp" : "'.$character_subinfo['skill_xp'].'",';
					echo '"min_ap" : "'.$character_subinfo['min_ap'].'",';
					echo '"max_ap" : "'.$character_subinfo['max_ap'].'",';
					echo '"dp" : "'.$character_subinfo['dp'].'",';
					echo '"distmin_ap" : "'.$character_subinfo['distmin_ap'].'",';
					echo '"distmax_ap" : "'.$character_subinfo['distmax_ap'].'",';
					echo '"dist_dp" : "'.$character_subinfo['dist_dp'].'",';
					echo '"lucky" : "'.$character_subinfo['lucky'].'",';
					echo '"fire" : "'.$character_subinfo['fire'].'",';
					echo '"ice" : "'.$character_subinfo['ice'].'",';
					echo '"force" : "'.$character_subinfo['force'].'",';
					echo '"poison" : "'.$character_subinfo['poison'].'",';
					echo '"lightning" : "'.$character_subinfo['lightning'].'",';
					echo '"dark" : "'.$character_subinfo['dark'].'",';
					echo '"holy" : "'.$character_subinfo['holy'].'",';
				}
			
				echo '"Message" : "Success Login" }';
																							
				die2();
		break;
 	}
	
	
?>
