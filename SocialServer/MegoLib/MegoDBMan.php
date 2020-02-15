<?php

	$secretKey="cf79c9a3881a4ceb92cca703eefee1a3";// "GodAlwaysLovesUs!ThanksToGod!" 의 MD5 

function die2()
{
//	mysql_close();
	die();
}

function ConnectToDB()
{
	return mysql_pconnect('localhost:8289', 'ddungdbman', 'ddungtest');
}

function SelectDB($connection)
{
	return mysql_select_db('ddung',$connection);
}

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

function CheckDDOS()
{
	return false;
	
	$ip = get_real_ip();
	$time = time();
	
	$filename = "./connected/".$ip.".txt";
	
	if ( file_exists($filename) )
	{
		$h=fopen($filename, "r");
		$checker = fread($h,80);
		fclose($h);

		$h=fopen($filename, "w");
		fwrite($h,$time);
		fclose($h);
		
		if ( $time - $checker < 2 )
		{
			return true;
		}
	}
	else 
	{
		$h=fopen($filename, "w");
		fwrite($h,$time);
		fclose($h);
		return false;
	}

	return false;	
}

function UseAPI($action,$id,$password,$number)
{
//	$out = "POST /apip.php?HTTP/1.0\r\n\r\n";
	$app_id = "10000";
//	$app_id = "r2f0002";
	$app_key = "vgy7PUs5tfxKxSGmCPXM";
	
	$fileHost = "http://r2f.netmego.cn";
	$filePath = "/apip.php";
	$port = 80;
	$nowtime = time();
	$sign = md5($app_id.$app_key.$nowtime);
	
	if ( $number > 0 )
		$param = "op=serv&action=".$action."&app_id=".$app_id."&time=".$nowtime."&sign=".$sign."&username=".$id."&password=".$password."&number=".$number; //넘길값
	else	
		$param = "op=serv&action=".$action."&app_id=".$app_id."&time=".$nowtime."&sign=".$sign."&username=".$id."&password=".$password; //넘길값
		
	$len = strlen($param);  //길이
	
	$fp = fsockopen ($fileHost, $port, $errno, $errstr, 30);
	
	if ($fp) 
	{
	    fputs($fp,"POST $filePath HTTP/1.1\n");
	    fputs($fp,"Host: $fileHost\n");
	    fputs($fp,"Content-type: application/x-www-form-urlencoded\n");
	    fputs($fp,"Content-length: ".$len."\n");
	    fputs($fp,"Connection: Close\r\n\r\n");
	    fputs($fp,"$param"); 
	    
	    while (!feof($fp)){
	     $data = $data.fgets($fp,4096);
	    }
	    
	    $data = explode("\r\n\r\n", $data, 2);	// 헤더 날리고
 
    	$content = isset($data[1]) ? $data[1] : '';	// 컨텐츠 얻어오고
		
		$content2 = explode("\r\n", $content, 3);	// 컨텐츠 중에서 JSON 한 줄만 얻어오고
		
		$content = $content2[1];	// JSON 결과만 리턴
	}
	else
	{
	    $data = "$errstr ($errno)<br>\n";
	}
	fclose ($fp);
	
	return $content;
}

function UseAPI_KR($action,$id,$password,$ip)
{
    $secretKey="GodAlwaysLovesMeAndUs!BrandonIsGenius!";
	
//	$out = "POST /apip.php?HTTP/1.0\r\n\r\n";
	$fileHost = "www.r2fantasy.com";
	$filePath = "/php/directlogin.php";
	$port = 80;
	
    $real_hash = md5($action.$id.$password.$ip.$secretKey); 
	
	
	$param = "CMD=".$action."&ID=".$id."&PW=".$password."&IP=".$ip."&check=".$real_hash;//넘길값
	$len = strlen($param);  //길이
	
	$fp = fsockopen ($fileHost, $port, $errno, $errstr, 30);
	
	if ($fp) 
	{
	    fputs($fp,"POST $filePath HTTP/1.1\n");
	    fputs($fp,"Host: $fileHost\n");
	    fputs($fp,"Content-type: application/x-www-form-urlencoded\n");
	    fputs($fp,"Content-length: ".$len."\n");
	    fputs($fp,"Connection: Close\r\n\r\n");
	    fputs($fp,"$param"); 
	    
	    while (!feof($fp)){
	     $data = $data.fgets($fp,4096);
	    }
		
	    $data = explode("\r\n\r\n", $data, 2);	// 헤더 날리고
 
    	$content = isset($data[1]) ? $data[1] : '';	// 컨텐츠 얻어오고
		
		$content2 = explode("\r\n", $content, 3);	// 컨텐츠 중에서 JSON 한 줄만 얻어오고
		
		$content = $content2[0];	// JSON 결과만 리턴
 	}
	else
	{
	    $data = "$errstr ($errno)<br>\n";
	}
	fclose ($fp);
	
	return $content;
}

function UseAPI_Platform($platform,$platformkey,$serverid,$action,$id,$password,$number)
{
	$fileHost = "brd.app1101076297.twsapp.com";
	$filePath = "/r2f.php";
	$port = 80;
	
	$param = "pf=".$platform."&pfkey=".$platformkey."&server=".$serverid."&action=".$action."&oid=".$id."&okey=".$password."&number=".$number; //넘길값

	$len = strlen($param);  //길이
	
	$fp = fsockopen ($fileHost, $port, $errno, $errstr, 30);
	
	if ($fp) 
	{
	    fputs($fp,"POST $filePath HTTP/1.1\r\n");
	    fputs($fp,"Host: $fileHost\r\n");
	    fputs($fp,"Referer: $fileHost\r\n");
	    fputs($fp,"Content-type: application/x-www-form-urlencoded\r\n");
	    fputs($fp,"Content-length: ".$len."\r\n");
	    fputs($fp,"Connection: Close\r\n\r\n");
	    fputs($fp,$param); 
	    
	    $data = '';
	    
	    while (!feof($fp)){
	     $data .= fgets($fp,128);
	    }

	    $data = explode("\r\n\r\n", $data, 2);	// 헤더 날리고
 
    	$content = isset($data[1]) ? $data[1] : '';	// 컨텐츠 얻어오고

		$content2 = explode("\r\n", $content, 3);	// 컨텐츠 중에서 JSON 한 줄만 얻어오고

		$content = trim($content2[1]);	// JSON 결과만 리턴
    	
	//	echo $content2[0];
    					
	}
	else
	{
	    $data = "$errstr ($errno)<br>\n";
	}
	fclose ($fp);
	
	return $content;
}


?>