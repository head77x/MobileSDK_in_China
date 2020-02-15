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

function CheckCMS($idx)
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

	$idx = mysql_real_escape_string($idx, $db); 

	$query = "select * from mapserver where Map_index={$idx} and Server_IP='{$real_ip}';";
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

	return $cmsinfo['user_cnt'];
}
	
	$request_command = $_POST['CMD'];
	
	switch( $request_command )
	{
		case 11:	// 물가 정보 얻어오기
			$mapindex = $_POST['MI'];
			
			$user_cnt = CheckCMS($mapindex);
		
			if ( $user_cnt > -1 )
			{
				$ironvalue = $_POST['IR'];
				$silver = $_POST['SI'];
				$gold = $_POST['GO'];
				$mythril = $_POST['TH'];
				$adman = $_POST['AD'];
				$varistone = $_POST['VA'];
								
				$ironvalue = mysql_real_escape_string($ironvalue, $db); 
				$silver = mysql_real_escape_string($silver, $db); 
				$gold = mysql_real_escape_string($gold, $db); 
				$mythril = mysql_real_escape_string($mythril, $db); 
				$adman = mysql_real_escape_string($adman, $db); 
				$varistone = mysql_real_escape_string($varistone, $db); 
								
				$query = "update exchange set iron=iron+{$ironvalue},silver=silver+{$silver},gold=gold+{$gold},mythril=mythril+{$mythril},adamantium=adamantium+{$adman},varistone=varistone+{$varistone};";
				$result = mysql_query($query,$db);

				if ( !$result )
				{
					echo '{ "Result" : "-2", "Message" : "Query error: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$query = "select * from exchange;";
				$result = mysql_query($query,$db);
				
				$num_results = mysql_num_rows($result);

				if ( $num_results < 1 )	// first cannot find account
				{
					echo '{ "Result" : "-6", "Message" : "Cannot find exchange info"}';	 
					mysql_close($accdb);
					die2();
				}
				
				$exchange = mysql_fetch_array($result);
				mysql_free_result($result);
								
				echo '{ "Result" : "0",';
				
				echo '"iron" : "'.$exchange['iron'].'",';
				echo '"silver" : "'.$exchange['silver'].'",';
				echo '"gold" : "'.$exchange['gold'].'",';
				echo '"mythril" : "'.$exchange['mythril'].'",';
				echo '"adamantium" : "'.$exchange['adamantium'].'",';
				echo '"varistone" : "'.$exchange['varistone'].'",';
				echo '"average_get" : "'.$exchange['aver_cooper'].'",';
				echo '"Message" : "Success Login" }';
																							
				die2();
			}
		break;
		case 12:	// 샵 정보
			$user_cnt = CheckCMS($server_index);
		
			if ( $user_cnt > -1 )
			{
				$query = "select * from shop_table;";
				$result = mysql_query($query,$db);
				
				if ( !$result )
				{
					echo "2\n";	 
					echo "Query error: ".mysql_error($db)."\n"; 
					die2();
				}
				
				$num_results = mysql_num_rows($result);

				if ( $num_results < 1 )
				{
					echo "3\n";
					echo "No Shop Informations\n";
					die2();
				}
				
				echo "0\n";
				echo $num_results."\n";

				while($shop = mysql_fetch_array($result))
				{
					echo $shop['shop_itm_index']."\n";
					echo $shop['itm_index']."\n";
					echo $shop['set_index1']."\n";
					echo $shop['set_index2']."\n";
					echo $shop['set_index3']."\n";
					echo $shop['set_index4']."\n";
					echo $shop['set_index5']."\n";
					echo $shop['set_index6']."\n";
					echo $shop['discount']."\n";
					echo $shop['das']."\n";
					echo $shop['price']."\n";
					echo $shop['cash']."\n";
                }
			
				mysql_free_result($result);
				die2();
			}
			else 
			{
				echo "1\n";	 
				echo "Query error: ".$user_cnt.":".mysql_error($db)."\n"; 
				die2();
			}
		break;
		case 13:	// 아이템 정보
			$user_cnt = CheckCMS($server_index);
		
			if ( $user_cnt > -1 )
			{
				$query = "select * from item_table;";
				$result = mysql_query($query,$db);
				
				if ( !$result )
				{
					echo "2\n";	 
					echo "Query error: ".mysql_error($db)."\n"; 
					die2();
				}
				
				$num_results = mysql_num_rows($result);

				if ( $num_results < 1 )
				{
					echo "3\n";
					echo "No Item Informations\n";
					die2();
				}
				
				echo "0\n";
				echo $num_results."\n";

				while($items = mysql_fetch_array($result))
				{
					echo $items['itm_index']."\n";
					echo $items['kind']."\n";
					echo $items['imagenum']."\n";
					echo $items['level_limit']."\n";
					echo $items['time_limit']."\n";
					echo $items['use_limit']."\n";
					echo $items['gender_limit']."\n";
					echo $items['additional']."\n";
					echo $items['can_resale']."\n";
					echo $items['price']."\n";
					echo $items['cash']."\n";
                }
			
				mysql_free_result($result);
				die2();
			}
			else 
			{
				echo "1\n";	 
				echo "Query error: ".$user_cnt.":".mysql_error($db)."\n"; 
				die2();
			}
		break;
		case 14:	// 로그인 요청
			$mapindex = $_POST['MI'];
			$wantogo = $_POST['WM'];
			$serveridx = $_POST['SV'];
			
			$user_cnt = CheckCMS($wantogo);
		
			if ( $user_cnt > -1 )
			{
				$logincode = $_POST['LK'];
				$hackcode = $_POST['HK'];
				$user_id = $_POST['ID'];
				
				$logincode = mysql_real_escape_string($logincode, $db); 
				$hackcode = mysql_real_escape_string($hackcode, $db); 
				$user_id = mysql_real_escape_string($user_id, $db); 
				
				// 로그인 시 및 맵 이동시에는 로그인 코드만 체크
				$query = "select * from accounts where id='".$user_id."' and game_playing_status=".$logincode.";";
				$result = mysql_query($query,$db);

				if ( !$result )
				{
					echo '{ "Result" : "-2", "Message" : "Query error: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$num_results = mysql_num_rows($result);

				if ( $num_results < 1 )	// first cannot find account
				{
					$query = "insert into log_table values (0,0,0,65535,'{$user_id}','check hacking !', now());";									
					$result = mysql_query($query,$db);
					
					echo '{ "Result" : "-6", "Message" : "Cannot find ID & hackcode"}';
					mysql_close($accdb);
					die2();
				}
					
				// Success get user informations				
				$userinfo = mysql_fetch_array($result);
				mysql_free_result($result);
								
				if ( $userinfo['character_idx'] != 0 )	// If have character... need to get informations
				{
					$query = "select * from characters where user_idx={$userinfo['user_idx']} and chr_idx={$userinfo['character_idx']} and last_pos_map={$mapindex};";
					$result = mysql_query($query,$db);
					
					if ( !$result )
					{
						$query = "insert into log_table values (0,{$userinfo['user_idx']},0,65534,'{$user_id}','character problem !', now());";									
						$result = mysql_query($query,$db);
						
						echo '{ "Result" : "-13", "Message" : "Cannot get character: '.mysql_error($db).'"}';	 
						die2();
					}
					
					$num_results = mysql_num_rows($result);
	
					if ( $num_results < 1 )	// first cannot find account
					{
						$query = "insert into log_table values (0,{$userinfo['user_idx']},0,65535,'{$user_id}','check hacking !', now());";									
						$result = mysql_query($query,$db);
						
						echo '{ "Result" : "-14", "Message" : "cannot find characters" }';	 
						die2();
					}
										
					$character_info = mysql_fetch_array($result);
					mysql_free_result($result);
					
					$query = "select * from character_subinfo where chr_idx=".$userinfo['character_idx'].";";
					$result = mysql_query($query,$db);
					
					if ( !$result )
					{
						$query = "insert into log_table values (0,{$userinfo['user_idx']},0,65534,'{$user_id}','character problem !', now());";									
						$result = mysql_query($query,$db);
						
						echo '{ "Result" : "-15", "Message" : "Cannot get character subinfo: '.mysql_error($db).'"}';	 
						die2();
					}
					
					$num_results = mysql_num_rows($result);
	
					if ( $num_results < 1 )	// first cannot find account
					{
						$query = "insert into log_table values (0,{$userinfo['user_idx']},0,65534,'{$user_id}','character problem !', now());";									
						$result = mysql_query($query,$db);
						
						echo '{ "Result" : "-14", "Message" : "He have no character subinfo" }';	 
						die2();
					}
					
					$character_subinfo = mysql_fetch_array($result);
					mysql_free_result($result);
				}
				else 
				{
					$query = "insert into log_table values (0,{$userinfo['user_idx']},0,65534,'{$user_id}','character problem !', now());";									
					$result = mysql_query($query,$db);
					
					echo '{ "Result" : "-15", "Message" : "He have no character subinfo" }';	 
					die2();
				}								
	
				// 로그인 성공시 새로운 핵코드 저장
				$query = "update accounts set hackcode={$hackcode} where id='".$user_id."';";
				$result = mysql_query($query,$db);
				
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
					
					$my_energy = $tiredinfo['my_energy'];	// 휴식해야 할 시간
					$overtimed = $tiredinfo['over_timed'];	// 오버타임 여부
				}
				
		 		$retval = UseAPI_Platform("checking", "cashproc", $serveridx, "havebefore", $user_id, $password, 0);
				
				$beforecash = json_decode($retval,true);
				
				if ( $beforecash['status'] == 1 )	// 처리해야 할 충전 포인트가 있다면, 더해주기
					$needtoaddcash = $beforecash['counts'];
				else 
					$needtoaddcash = 0;	
				
				echo '{ "Result" : "0",';
				
				$realcash = $userinfo['gamecash'] + $needtoaddcash;
				
				echo '"id" : "'.$user_id.'",';
				
				echo '"idx" : "'.$userinfo['user_idx'].'",';
				echo '"hackcode" : "'.$hackcode.'",';
				echo '"cash" : "'.$realcash.'",';
				echo '"start_real" : "'.$userinfo['last_login'].'",';
				echo '"need_rest" : "'.$my_energy.'",';
				echo '"overplay" : "'.$overtimed.'",';
								
				echo '"chridx" : "'.$userinfo['character_idx'].'",';
				
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
				echo '"wantogo" : "'.$wantogo.'",';
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
				echo '"dm_point" : "'.$character_subinfo['dm_point'].'",';
				echo '"fame" : "'.$character_subinfo['fame'].'",';
				echo '"illness" : "'.$character_subinfo['illness'].'",';
				echo '"wp" : "'.$character_subinfo['wp'].'",';
				echo '"hp" : "'.$character_subinfo['hp'].'",';
				echo '"hp_max" : "'.$character_subinfo['hp_max'].'",';
				echo '"mp" : "'.$character_subinfo['mp'].'",';
				echo '"mp_max" : "'.$character_subinfo['mp_max'].'",';

        		$nowtime = time();
        		$pasttime = ($nowtime - $userinfo['logout_time']) / 60;   // 분단위로 변환
				
				// 휴식한 시간(분) 만큼 sp 증가 시켜줌
				if ( $character_subinfo['hp'] > 0 )
				{
	        		$sp = $character_subinfo['sp'] + (int)$pasttime;
					
					if ( $sp > 100 )
						$sp = 100;
				}
				else // 죽어있는 경우라면, 시간 만큼 SP가 깍여있다.
				{
	        		$sp = $character_subinfo['sp'] - (int)$pasttime;
					
					if ( $sp < 0 )
						$sp = 0;
				}
								
				echo '"sp" : "'.$sp.'",';
				echo '"sp_max" : "'.$character_subinfo['sp_max'].'",';
				echo '"level" : "'.$character_subinfo['level'].'",';
				echo '"xp" : "'.$character_subinfo['xp'].'",';
				if (strlen($character_subinfo['skill_xp']) > 1 )
					echo '"skill_xp" : "'.$character_subinfo['skill_xp'].'",';
				else
					echo '"skill_xp" : "",';
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

				if (strlen($character_info['items']) > 1 )
					echo '"items" : '.$character_info['items'].',';
				else
					echo '"items" : "",';

				if (strlen($character_info['money']) > 1 )
					echo '"money" : '.$character_info['money'].',';
				else
					echo '"money" : "",';

				if (strlen($character_info['bank']) > 1 )
					echo '"bank" : '.$character_info['bank'].',';
				else
					echo '"bank" : "",';

				echo '"Message" : "Success Login" }';
																							
				die2();
			}
			else
			{
				echo '{ "Result" : "-16",';
				echo '"Message" : "Cannot find mapserver" }';
				die2();
			}
			
		break;
		case 15:	// 로그오프 요청
			$mapindex = $_POST['MI'];	// 현재 맵 인덱스
			
			$user_cnt = CheckCMS($mapindex);
		
			if ( $user_cnt > -1 )
			{
				$realquit = $_POST['QUIT'];
				$realquit = mysql_real_escape_string($realquit, $db); 
								
				$user_id = $_POST['ID'];
				$user_id = mysql_real_escape_string($user_id, $db); 
				$srl = $_POST['SRL'];
				$srl = mysql_real_escape_string($srl, $db); 
				$logincode = $_POST['LK'];
				$logincode = mysql_real_escape_string($logincode, $db); 
				$hackcode = $_POST['HK'];
				$hackcode = mysql_real_escape_string($hackcode, $db); 
				$playtime = $_POST['GP'];	// 플레이 시간 - 초
				$playtime = mysql_real_escape_string($playtime, $db); 
				$realplaytime = $_POST['RGP'];	// 실제 로그인 시각 - 초
				$realplaytime = mysql_real_escape_string($realplaytime, $db); 
				$my_rest_energy = $_POST['ENE'];	// 누적 피로 시간 - 초
				$my_rest_energy = mysql_real_escape_string($my_rest_energy, $db); 
				$overtimed = $_POST['OTM'];	// 오버 타임 여부
				$overtimed = mysql_real_escape_string($overtimed, $db); 
				$gamecash = $_POST['GCH'];
				$gamecash = mysql_real_escape_string($gamecash, $db); 

				$chr_index = $_POST['CI'];
				$chr_index = mysql_real_escape_string($chr_index, $db); 
				$chr_hp = $_POST['CH'];
				$chr_hp = mysql_real_escape_string($chr_hp, $db); 
				$chr_max_hp = $_POST['CMH'];
				$chr_max_hp = mysql_real_escape_string($chr_max_hp, $db); 
				$chr_mp = $_POST['CM'];
				$chr_mp = mysql_real_escape_string($chr_mp, $db); 
				$chr_max_mp = $_POST['CMM'];
				$chr_max_mp = mysql_real_escape_string($chr_max_mp, $db); 
				$chr_sp = $_POST['CS'];
				$chr_sp = mysql_real_escape_string($chr_sp, $db); 
				$chr_wp = $_POST['CW'];
				$chr_wp = mysql_real_escape_string($chr_wp, $db); 
				$chr_xp = $_POST['CX'];
				$chr_xp = mysql_real_escape_string($chr_xp, $db); 
				$skill_xp = $_POST['SX'];
				$skill_xp = mysql_real_escape_string($skill_xp, $db); 
				$chr_level = $_POST['CL'];
				$chr_level = mysql_real_escape_string($chr_level, $db); 
				$reborn_cnter = $_POST['ILL'];
				$reborn_cnter = mysql_real_escape_string($reborn_cnter, $db); 
				
				$chr_pos_x = $_POST['PX'];
				$chr_pos_x = mysql_real_escape_string($chr_pos_x, $db); 
				$chr_pos_y = $_POST['PY'];
				$chr_pos_y = mysql_real_escape_string($chr_pos_y, $db); 
				$chr_pos_z = $_POST['PZ'];
				$chr_pos_z = mysql_real_escape_string($chr_pos_z, $db); 
				
				$wantmap = $_POST['WM'];
				$wantmap = mysql_real_escape_string($wantmap, $db); 
				$wantzone = $_POST['WZ'];
				$wantzone = mysql_real_escape_string($wantzone, $db); 
				
				$item = $_POST['ITM'];
				$item = mysql_real_escape_string($item, $db); 
				$money = $_POST['MON'];
				$money = mysql_real_escape_string($money, $db); 
				$bank = $_POST['BNK'];
				$bank = mysql_real_escape_string($bank, $db); 
				
				$respawn_map = $_POST['RM'];
				$respawn_map = mysql_real_escape_string($respawn_map, $db); 
				$portal_map = $_POST['POM'];
				$portal_map = mysql_real_escape_string($portal_map, $db); 
				$portal_x = $_POST['POX'];
				$portal_x = mysql_real_escape_string($portal_x, $db); 
				$portal_y = $_POST['POY'];
				$portal_y = mysql_real_escape_string($portal_y, $db); 
				$portal_z = $_POST['POZ'];
				$portal_z = mysql_real_escape_string($portal_z, $db); 
				
				// NPC모드 여부
				$npcmode = $_POST['NPC'];
				$npcmode = mysql_real_escape_string($npcmode, $db); 
				$dm_point = $_POST['DMP'];
				$dm_point = mysql_real_escape_string($dm_point, $db); 
				
				$realmwar = $_POST['RMM'];
				$realmwar = mysql_real_escape_string($realmwar, $db); 
				
				
				
				// 맵 나갈시는 핵코드만 체크한다. 로그인 코드가 다른 경우에는 로그인 코드를 다시 맞춰준다.(게임중 다른 유저가 들어온 경우)
				$query = "select game_playing_status from accounts where id='{$user_id}' and user_idx={$srl} and hackcode={$hackcode};";
				$result = mysql_query($query,$db);
				
				if ( !$result )
				{
					echo '{ "Result" : "-1", "Message" : "Failed Logout: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$num_results = mysql_num_rows($result);

				if ( $num_results < 1 )	// cannot find account
				{
					echo '{ "Result" : "-2", "Message" : "Failed Logout - hackcode diff" }';	 
					die2();
				}
																		
				$nowtick = time();
				
				if ( $npcmode == 0 )
				{
					$query = "update character_subinfo set hp={$chr_hp},hp_max={$chr_max_hp},mp={$chr_mp},mp_max={$chr_max_mp},sp={$chr_sp},wp={$chr_wp},xp={$chr_xp},skill_xp='{$skill_xp}',level={$chr_level},illness={$reborn_cnter} where chr_idx={$chr_index};";
					$result = mysql_query($query,$db);
					if ( !$result )
					{
						echo '{ "Result" : "-3", "Message" : "Failed Logout '.mysql_error($db).'"}';	 
						die2();
					}

					if ( $realmwar == 0 )
					{	
						$query = "update characters set last_pos_map={$mapindex},last_pos_x={$chr_pos_x}, last_pos_y={$chr_pos_y}, last_pos_z={$chr_pos_z}, last_wantmap={$wantmap}, last_comezone={$wantzone}, respawn_map={$respawn_map}, portal_map={$portal_map}, portal_x={$portal_x}, portal_y={$portal_y}, portal_z={$portal_z}, items='{$item}', money='{$money}', bank='{$bank}' where chr_idx={$chr_index};";
						$result = mysql_query($query,$db);
						if ( !$result )
						{
							echo '{ "Result" : "-4", "Message" : "Failed Logout '.mysql_error($db).'"}';	 
							die2();
						}
					}
					else 
					{
						$query = "update characters set items='{$item}', money='{$money}', bank='{$bank}' where chr_idx={$chr_index};";
						$result = mysql_query($query,$db);
						if ( !$result )
						{
							echo '{ "Result" : "-4", "Message" : "Failed Logout '.mysql_error($db).'"}';	 
							die2();
						}
					}
					
					// 로그아웃할때 핵코드가 바뀐다 - 정식버전인 경우
				/*	
					$hackcode = rand(3859,38593859);
															
					$query = "update accounts set hackcode=".$hackcode.",playing_time=playing_time+".$playtime.
						", logout_time=".$nowtick." where user_idx=".$srl.";";
				*/		
					
					// 플레이 한 초 더해주기. 게임 종료한 시간 지정..  
					$query = "update accounts set playing_time=".$playtime.", total_playing=total_playing+".$playtime.
						", logout_time=".$nowtick.", gamecash=".$gamecash.", logout_date=now() where user_idx=".$srl.";";
						
					$result = mysql_query($query,$db);
					if ( !$result )
					{
						echo '{ "Result" : "-5", "Message" : "Failed Logout '.mysql_error($db).'"}';	 
						die2();
					}

					$query = "update tired_table set my_energy=".$my_rest_energy.
						", over_timed=".$overtimed." where user_idx=".$srl.";";
						
					$result = mysql_query($query,$db);
					if ( !$result )
					{
						echo '{ "Result" : "-5", "Message" : "Failed Logout '.mysql_error($db).'"}';	 
						die2();
					}

					if ( $realquit == 1 )	// 실제 종료면 로그 남기기
					{
						$realplaytime = $nowtick - $realplaytime;	// 실제 이번에 했던 게임 시간
						
						$query = "insert into log_table values (0,{$srl},0,4,'{$realplaytime}','end game', now());";									
						$result = mysql_query($query,$db);
					}
	
					echo '{ "Result" : "0", "NewHack" : "'.$hackcode.'", "Message" : "Success Logout"}';	 
					die2();
				}
				else 
				{
					$query = "update character_subinfo set dm_point={$dm_point} where chr_idx={$chr_index};";
					$result = mysql_query($query,$db);
					if ( !$result )
					{
						echo '{ "Result" : "-3", "Message" : "Failed Logout '.mysql_error($db).'"}';	 
						die2();
					}
					
					
					$query = "update accounts set playing_time=".$playtime.", total_playing=total_playing+".$playtime.
						", logout_time=".$nowtick.", gamecash=".$gamecash.", logout_date=now() where user_idx=".$srl.";";
						
					$result = mysql_query($query,$db);
					if ( !$result )
					{
						echo '{ "Result" : "-5", "Message" : "Failed Logout '.mysql_error($db).'"}';	 
						die2();
					}

					$query = "update tired_table set my_energy=".$my_rest_energy.
						", over_timed=".$overtimed." where user_idx=".$srl.";";
						
					$result = mysql_query($query,$db);
					if ( !$result )
					{
						echo '{ "Result" : "-5", "Message" : "Failed Logout '.mysql_error($db).'"}';	 
						die2();
					}

					if ( $realquit == 1 )	// 실제 종료면 로그 남기기
					{
						$realplaytime = $nowtick - $realplaytime;	// 실제 이번에 했던 게임 시간
						
						$query = "insert into log_table values (0,{$srl},0,5,'{$realplaytime}','end game - NPC Mode', now());";									
						$result = mysql_query($query,$db);
					}
	
					echo '{ "Result" : "0", "NewHack" : "'.$hackcode.'", "Message" : "Success Logout"}';	 
					die2();
				}
			}
		break;
		case 20:	// Master GM 리스트
			echo '{ "MasterGM" : ["101","102","103","105"] }';
		break;
		case 30:	// 퀘스트 확정하기
			$mapindex = $_POST['MI'];	// 현재 맵 인덱스
			$questindex = $_POST['QST'];	// 퀘스트 인덱스
			
			$user_cnt = CheckCMS($mapindex);
		
			if ( $user_cnt > -1 )
			{
				$questindex = mysql_real_escape_string($questindex, $db); 
				
				$query = "insert into quest_confirmed values ({$questindex}, 1);";
				$result = mysql_query($query,$db);
				if ( !$result )
				{
					echo '{ "Result" : "-3", "Message" : "Failed confirm quest '.mysql_error($db).'"}';	 
					die2();
				}
			
				echo '{ "Result" : "0", "QuestIndex" : "'.$questindex.'", "Message" : "Quest confirmed"}';	 
				die2();
			}
		break;
		case 31: 	// 퀘스트 완성하기
			$mapindex = $_POST['MI'];	// 현재 맵 인덱스
			$questindex = $_POST['QST'];	// 퀘스트 인덱스
			$useridx = $_POST['UID'];	// 퀘스트 실행자
			$selectcorrect = $_POST['CORR'];	// 선택문 선택형인 경우, 맞았는지 여부
					
			$user_cnt = CheckCMS($mapindex);

			if ( $user_cnt < 0 )
			{
				die2();
			}
			
			$questindex = mysql_real_escape_string($questindex, $db); 
			$useridx = mysql_real_escape_string($useridx, $db); 
			$selectcorrect = mysql_real_escape_string($selectcorrect, $db); 
			
			$query = "select * from quest where idx = {$questindex};";
			$result = mysql_query($query,$db);

			if ( !$result )	
			{
				echo '{ "Result" : "-22", "Message" : "query failed'.$query.'"}';	 
				die2();
			}

			$questinfo = mysql_fetch_array($result);
			mysql_free_result($result);
			
			if ( $questinfo['gm_flag'] != 1 && $questinfo['finished_flag'] != 1 )
			{
				echo '{ "Result" : "1", "Message" : "Quest status not normaly :'.$questinfo['finished_flag'].'"}';	 
				die2();
			}

			$mapindex = $questinfo['exist_map'];

			if ( $mapindex >= 3000 )
					$mapstr = 'A'.($mapindex - 3000);
				else
			if ( $mapindex >= 1000 )
					$mapstr = 'D'.($mapindex - 1000);
				else
					$mapstr = 'F'.$mapindex; 		
			
			// GM용 퀘스트가 아닌경우, 퀘스트 날려야 함
			if ( $questinfo['gm_flag'] != 1 )
			{
				// 퀘스트 리스트 업데이트				
				$filename = "Quest\\".$mapstr."\\QuestList.dat";
				
				$h = fopen( $filename, "rt");
				
				if ( $h != null )
				{
					$filecon = fread($h,filesize($filename));
					fclose($h);
				}
				else
					$filecon = "";
				
				$contents = split(",",$filecon);
				
				$filecon = "";
				for ( $i = 0; $i < count($contents) - 1; $i+=5 )
				{
					if ( $contents[$i] == $questindex )
						continue;
					
					$filecon = $filecon."{$contents[$i]},{$contents[$i+1]},{$contents[$i+2]},{$contents[$i+3]},{$contents[$i+4]},";
				}
				
				$filecon = $filecon."\n";
				
				$h = fopen( $filename, "wt");
				
				fwrite( $h, $filecon );
				
				fclose($h);
				
				// 해당 퀘스트 파일 삭제
				unlink("Quest\\".$mapstr."\\".$questindex.".php" );
				
				// 퀘스트 실행중 리스트 업데이트				
				$filename = "Quest\\".$mapstr."\\QuestRunning.dat";
				
				$h = fopen( $filename, "rt");
				
				if ( $h != null )
				{
					$filecon = fread($h,filesize($filename));
					fclose($h);
				}
				else
					$filecon = "";
				
				$running = split(",",$filecon);
				$filecon = "";
				for ( $i = 0; $i < count($running)-1; $i++ )
				{
					if ( $running[$i] == $questindex )
						continue;
					
					$filecon = $filecon."{$running[$i]},";
				}
				
				$filecon = $filecon."\n";
				
				$h = fopen( $filename, "wt");
				
				fwrite( $h, $filecon );
				
				fclose($h);
				
				$query = "update quest set finished_flag=2 where idx={$questindex};";
				$result = mysql_query($query,$db);
				if ( !$result )
				{
					echo '{ "Result" : "-22", "Message" : "query failed'.$query.'"}';	 
					die2();
				}
			}
			
			// 현재 해당 플레이어가 진행중인 퀘스트 리스트 얻기
			$query = "select * from quest_finished where chr_idx={$useridx};";
			$result = mysql_query($query,$db);
			
			if ( !$result )	
			{
				echo '{ "Result" : "-22", "Message" : "query failed'.$query.'"}';	 
				die2();
			}
			
			$num_results = mysql_num_rows($result);

			$quest_cnt = 0;
			$quest_str = "";
			$finished_str = "";
			
			if ( $num_results > 0 )	// first cannot find account
			{
				$detailinfo = mysql_fetch_array($result);
				mysql_free_result($result);

				$quest_cnt = $detailinfo['process_count'];
				$quest_str = $detailinfo['process_quest'];
				$finished_str = $detailinfo['finished_quest'];
			}
			
			$before_quest = split(",",$quest_str);
			$already_quest = split(",",$finished_str);
			$quest_str = "";
			// 해당 퀘스트를 진행중에서 제거하기
			for($i=0;$i < sizeof($before_quest);$i+=2)
			{
				if ($before_quest[$i + 1] == $questindex || strlen($before_quest[$i]) < 1 || strlen($before_quest[$i + 1]) < 1 )
					continue;
				
				$quest_str = $quest_str."{$before_quest[$i]},{$before_quest[$i+1]},";
			}

			// 이미 마친 퀘스트에 있는지 체크
			$exist = false;
			for($i=0;$i < sizeof($already_quest);$i+=2)
			{
				if ($already_quest[$i + 1] == $questindex )
				{
					$exist = true;
					break;
				}
			}
			
			if ( $exist == false && $questinfo['gm_flag'] == 1 )
				// 완료 퀘스트 추가 - GM퀘스트만 완료로 저장한다.
				$finished_str = $finished_str."{$mapindex},{$questindex},";

			// 퀘스트 갯수 업데이트				
			$temp_quest = split(",",$quest_str);
			$quest_cnt = sizeof($quest_cnt)/2;

			$query = "update quest_finished set process_count={$quest_cnt}, process_quest='{$quest_str}', finished_quest='{$finished_str}' where chr_idx={$useridx};";	// 퀘스트 내용 업데이트
			
			$result = mysql_query($query,$db);
			
			if ( !$result )	
			{
				echo '{ "Result" : "-22", "Message" : "Query error'.$query.'"}';	 
				die2();
			}
			
			// 결과가 0으로 왔으면, 선택문 선택이 잘못된 경우임
			if ( $selectcorrect == 0 )
			{
				$questinfo['give_copper'] = 0;
				$questinfo['give_exp'] = 0;
				$questinfo['give_warp_map'] = 0;
				$questinfo['give_warp_zone'] = 0;
				$questinfo['give_item'] = '""';
			}
			
			if (strlen($questinfo['delivery_item']) < 3)
				$questinfo['delivery_item'] = '{"BDX" : "0"}';
			
			echo '{ "Result" : "0",';
			echo '"QuestIndex" : "'.$questindex.'",';
			echo '"QuestCopper" : "'.$questinfo['give_copper'].'",';
			echo '"QuestExp" : "'.$questinfo['give_exp'].'",';
			echo '"QuestWarpMap" : "'.$questinfo['give_warp_map'].'",';
			echo '"QuestWarpZone" : "'.$questinfo['give_warp_zone'].'",';
			echo '"DeliveryItem" : '.$questinfo['delivery_item'].',';
			echo '"QuestItem" : '.$questinfo['give_item'].',';
			echo '"SelectCorrect" : "'.$selectcorrect.'",';
			echo '"Message" : "Quest finished"}';	 
			die2();			
		break;
		case 17:	// 캐쉬 정보 얻기
			$mapindex = $_POST['MI'];	// 현재 맵 인덱스
			$user_cnt = CheckCMS($mapindex);
		
			if ( $user_cnt > -1 )
			{
				$user_id = $_POST['ID'];
				$srl = $_POST['SRL'];
				$logincode = $_POST['LK'];
				$hackcode = $_POST['HK'];
				$password = $_POST['PW'];

				$user_id = mysql_real_escape_string($user_id, $db); 
				$srl = mysql_real_escape_string($srl, $db); 
				$logincode = mysql_real_escape_string($logincode, $db); 
				$hackcode = mysql_real_escape_string($hackcode, $db); 
				$password = mysql_real_escape_string($password, $db); 

				
				$query = "select hackcode from accounts where id='{$user_id}' and user_idx={$srl} and hackcode={$hackcode} and game_playing_status={$logincode};";
				$result = mysql_query($query,$db);
				
				if ( !$result )
				{
					echo '{ "Result" : "-1", "Message" : "Failed Logout: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$num_results = mysql_num_rows($result);

				if ( $num_results < 1 )	// cannot find account
				{
					echo '{ "Result" : "-2", "Message" : "Failed Logout - hackcode diff" }';	 
					die2();
				}
				
				// Success get user informations
				$retval = UseAPI("checkamount", $user_id, $password,0);
								
				$amountret = json_decode($retval,true);

				if ( $amountret['status'] == 0 )	// 계정 얻어옴 실패
				{
					echo '{ "Result" : "-5", "Message" : "'.$amountret['msg']['message'].'"}';	 
					die2();
				}
				
				$amount = $amountret['msg']['amount'];
																
				echo '{ "Result" : "0",';
				
				echo '"cash" : "'.$amount.'",';
			
				echo '"Message" : "Success Get Amount" }';
																							
				die2();
			}
		break;
		case 18:	// 캐쉬 충전
			$mapindex = $_POST['MI'];	// 현재 맵 인덱스
			$user_cnt = CheckCMS($mapindex);
		
			if ( $user_cnt > -1 )
			{
				$user_id = $_POST['ID'];
				$srl = $_POST['SRL'];
				$logincode = $_POST['LK'];
				$hackcode = $_POST['HK'];
				$usecash = $_POST['CN'];
				$password = $_POST['PW'];
				$platform = $_POST['PF'];
				$platformkey = $_POST['PFKEY'];
				$server_index = $_POST['SVR'];
				
				$user_id = mysql_real_escape_string($user_id, $db); 
				$srl = mysql_real_escape_string($srl, $db); 
				$logincode = mysql_real_escape_string($logincode, $db); 
				$hackcode = mysql_real_escape_string($hackcode, $db); 
				$usecash = mysql_real_escape_string($usecash, $db); 
				$password = mysql_real_escape_string($password, $db); 
				$platform = mysql_real_escape_string($platform, $db); 
				$platformkey = mysql_real_escape_string($platformkey, $db); 
				
				$query = "select hackcode from accounts where id='{$user_id}' and user_idx={$srl} and hackcode={$hackcode} and game_playing_status={$logincode};";
				$result = mysql_query($query,$db);
				
				if ( !$result )
				{
					echo '{ "Result" : "-1", "Message" : "Failed Logout: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$num_results = mysql_num_rows($result);

				if ( $num_results < 1 )	// cannot find account
				{
					echo '{ "Result" : "-2", "Message" : "Failed Logout - hackcode diff" }';	 
					die2();
				}
				
				if ( $usecash < 1 )
				{
					echo '{ "Result" : "-3", "Message" : "Must need to use money" }';	 
					die2();
				}
				
				if ( strcmp($platform, "7k7q") == 0 )
				{
					// Success get user informations
					$retval = UseAPI("exchange", $user_id, $password, $usecash);
									
					$amountret = json_decode($retval,true);
	
					if ( $amountret['status'] == 0 )	// 계정 얻어옴 실패
					{
						echo '{ "Result" : "-4", "Message" : "'.$amountret['msg']['message'].'"}';	 
						die2();
					}
					
					$spend = $amountret['msg']['spend'];
					$amount = $amountret['msg']['amount'];
																	
					echo '{ "Result" : "0",';
					
					echo '"platform" : "'.$platform.'",';
					echo '"cash" : "'.$amount.'",';
					echo '"spend" : "'.$spend.'",';
				
					echo '"Message" : "Success Recharge" }';
																								
					die2();
				}
				else
			 	{
			 		$retval = UseAPI_Platform($platform, $platformkey, $server_index, "recharge", $user_id, $password, $usecash);
					
					$preparebuy = json_decode($retval,true);
					
					if ( $preparebuy['status'] == 0)
					{
						echo '{ "Result" : "-4", "Message" : "'.$preparebuy['message'].'"}';	 
						die2();
					}
										
					/*					
										
					$query = "insert into bill_process values ({$srl},'{$user_id}','{$preparebuy['token']}',{$preparebuy['buytype']},{$preparebuy['server']},now(),".time().",0);";
					$result = mysql_query($query,$db);
					
					if ( !$result )
					{
						$query = "update bill_process set token='{$preparebuy['token']}',buytype={$preparebuy['buytype']},serveridx={$preparebuy['server']},whencome=now(),timestamp=".time().",step=0 where user_idx={$srl} and id='{$user_id}';";
						$result = mysql_query($query,$db);
						
						if ( !$result )
						{
							echo '{ "Result" : "-5", "Message" : "Failed Save bill: '.mysql_error($db).'"}';	 
							die2();
						}
					}
					
					 */					
					echo '{ "Result" : "0",';
					
					echo '"platform" : "'.$platform.'",';
					echo '"token" : "'.$preparebuy['token'].'",';
					echo '"param" : "'.$preparebuy['param'].'",';
				
					echo '"Message" : "Success Recharge" }';
																								
					die2();
					
										
				}				
			}
		break;
		case 19:	// 캐쉬 충전
			$mapindex = $_POST['MI'];	// 현재 맵 인덱스
			$user_cnt = CheckCMS($mapindex);
		
			if ( $user_cnt > -1 )
			{
				$user_id = $_POST['ID'];
				$srl = $_POST['SRL'];
				$logincode = $_POST['LK'];
				$hackcode = $_POST['HK'];
				$password = $_POST['PW'];
				$platform = $_POST['PF'];
				
				
				$user_id = mysql_real_escape_string($user_id, $db); 
				$srl = mysql_real_escape_string($srl, $db); 
				$logincode = mysql_real_escape_string($logincode, $db); 
				$hackcode = mysql_real_escape_string($hackcode, $db); 
				$password = mysql_real_escape_string($password, $db); 
				$platform = mysql_real_escape_string($platform, $db); 
				
				$query = "select hackcode from accounts where id='{$user_id}' and user_idx={$srl} and hackcode={$hackcode} and game_playing_status={$logincode};";
				$result = mysql_query($query,$db);
				
				if ( !$result )
				{
					echo '{ "Result" : "-1", "Message" : "Failed Logout: '.mysql_error($db).'"}';	 
					die2();
				}
				
				$num_results = mysql_num_rows($result);

				if ( $num_results < 1 )	// cannot find account
				{
					echo '{ "Result" : "-2", "Message" : "Failed Logout - hackcode diff" }';	 
					die2();
				}
				
		 		$retval = UseAPI_Platform($platform, "confirm", "0", "confirm", $user_id, $password, 0);
				
				$preparebuy = json_decode($retval,true);
				
				if ( $preparebuy['status'] == 0)
				{
					echo '{ "Result" : "-4", "Message" : "'.$preparebuy['message'].'"}';	 
					die2();
				}
				
				$query = "insert into log_table values (0,{$srl},3,1,'success recharge','{$preparebuy['payitem']}', now());";									
				$result = mysql_query($query,$db);
				
				echo '{ "Result" : "0", "Message" : "Success Recharge", "payitem":"'.$preparebuy['payitem'].'"}';	 
				die2();
			}
		break;
			}	

?>
