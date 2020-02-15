<?php
	$cmd = $_POST['cmd']; 

	switch( $cmd )
	{
		case 0:	// 데이터 초기화
			unlink("imagelist.php");
			$h = fopen("imagelist.php", 'a');
			fwrite($h, "<?php\n");
			fwrite($h, "echo '{ \"version\" : \"".time()."\", \"IconDatas\" : [';\n");
			fwrite($h, "echo '{ \"parts\" : \"-1\" }';\n");
			fclose($h);
		break;
		case 1:	// 새로운 이미지 추가
			if ( $_FILES['iconimage'] != null && is_uploaded_file($_FILES['iconimage']['tmp_name']) )
			{
				$h = fopen("imagelist.php", 'a');
				
				$mainiconpath = ".\\Icons\\".$_POST['filename'];
				move_uploaded_file( $_FILES['iconimage']['tmp_name'], $mainiconpath );
				
				if ( is_uploaded_file($_FILES['mainimage']['tmp_name']) )
				{
					$mainiconpath = ".\\Textures\\".$_POST['mainname'];
					move_uploaded_file( $_FILES['mainimage']['tmp_name'], $mainiconpath );
				}
				
				if ( is_uploaded_file($_FILES['subimage']['tmp_name']) )
				{
					$mainiconpath = ".\\Textures\\".$_POST['subname'];
					move_uploaded_file( $_FILES['subimage']['tmp_name'], $mainiconpath );
				}
				
				echo $mainiconpath.":success\n";
				$linkurl = "/Icons/".$_POST['filename'];
				
				fwrite($h, "echo ', {\"parts\" : \"".$_POST['parts']."\", \"index\" : \"".$_POST['index']."\", \"gender\" : \"".$_POST['gender']."\"}';\n" );
				fclose($h);
			}
			else
				echo "failed\n";
		break;
		case 6:	// 새로운 이미지 추가
			if ( $_FILES['iconimage'] != null && $_FILES['aniimage'] != null && 
			is_uploaded_file($_FILES['iconimage']['tmp_name']) && is_uploaded_file($_FILES['aniimage']['tmp_name']) )
			{
				$h = fopen("imagelist.php", 'a');
				
				$mainiconpath = ".\\Icons\\".$_POST['filename'];
				move_uploaded_file( $_FILES['iconimage']['tmp_name'], $mainiconpath );
				
				if ( is_uploaded_file($_FILES['aniimage']['tmp_name']) )
				{
					$mainiconpath = ".\\Textures\\".$_POST['aniname'];
					move_uploaded_file( $_FILES['aniimage']['tmp_name'], $mainiconpath );
				}
								
				echo $mainiconpath.":success\n";
				$linkurl = "/Icons/".$_POST['filename'];
				
				fwrite($h, "echo ', {\"parts\" : \"".$_POST['parts']."\", \"index\" : \"".$_POST['index']."\", \"gender\" : \"".$_POST['gender']."\"}';\n" );
				fclose($h);
			}
			else
				echo "failed\n";
		break;
		case 2:	// 데이터 종료
			$h = fopen("imagelist.php", 'a');
			fwrite($h, "echo ']}';\n");
			fwrite($h, "?>\n");
			fclose($h);
		break;
		case 3:	// 새로운 이미지 추가
			if ( $_FILES['ios'] != null && $_FILES['android'] != null && is_uploaded_file($_FILES['ios']['tmp_name']) && is_uploaded_file($_FILES['android']['tmp_name']))
			{
				if ( strtoupper($_POST['filename']) == "AVATAR.UNITY3D" )
				{
					$mainiconpath = ".\\avatar\\".$_POST['filename'];
					move_uploaded_file( $_FILES['ios']['tmp_name'], $mainiconpath."_ios" );
					move_uploaded_file( $_FILES['android']['tmp_name'], $mainiconpath."_android" );
					
					unlink("avatarversion.php");
					$h = fopen("avatarversion.php", 'a');
					fwrite($h, "<?php\n");
					fwrite($h, "echo '{ \"version\" : \"".time()."\" }';\n");
					fwrite($h, "?>\n");
					fclose($h);
				}
				else
				{
					$mainiconpath = ".\\models\\".$_POST['filename'];
					move_uploaded_file( $_FILES['ios']['tmp_name'], $mainiconpath."_ios" );
					move_uploaded_file( $_FILES['android']['tmp_name'], $mainiconpath."_android" );
				}
				
				echo "success : ".$_POST['filename']."\n";
				
				
			}
			else
				echo "failed\n";
		break;
		case 4:	// 새로운 이미지 추가
			if ( $_FILES['iconimage'] != null && $_FILES['ios'] != null && $_FILES['android'] != null && 
			is_uploaded_file($_FILES['iconimage']['tmp_name']) && is_uploaded_file($_FILES['ios']['tmp_name']) && is_uploaded_file($_FILES['android']['tmp_name']))
			{
				$mainiconpath = sprintf(".\\shop\\shop_%04d.unity3d", $_POST['index']);
				
				move_uploaded_file( $_FILES['ios']['tmp_name'], $mainiconpath."_ios" );
				move_uploaded_file( $_FILES['android']['tmp_name'], $mainiconpath."_android" );

				$mainiconpath = sprintf(".\\shop\\iconshop_%04d.png", $_POST['index']);
				move_uploaded_file( $_FILES['iconimage']['tmp_name'], $mainiconpath );
				
				echo "success : ".$_POST['iconimage']."\n";
			}
			else
				echo "failed\n";
		break;
		case 5:	// 데이터 초기화
			unlink("shoplist.php");
			$h = fopen("shoplist.php", 'a');
			fwrite($h, "<?php\n");
			fwrite($h, "echo '{ \"version\" : \"".time()."\", \"ShopCounter\" : \"".$_POST['count']."\" }';\n");
			fwrite($h, "?>\n");
			fclose($h);
		break;
	}
?>