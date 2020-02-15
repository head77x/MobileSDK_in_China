<?php
define("PRIVATE_KEY", "");			// 应用在易接服务获取的同步密钥
define("LOGIN_RESULT_SUCCESS", 0);
define("CHECK_LOGIN_URL", "http://sync.1sdk.cn/login/check.html?");

class Demo_1sdk {
    private static $pk = PRIVATE_KEY ;
    private static $loginRs = LOGIN_RESULT_SUCCESS ;
    private static $chkLoginUrl = CHECK_LOGIN_URL ;

    /**
     * 构造函数
     */
    public function __construct(){
        header("Content-type: text/html; charset=utf-8");
    }

    /**
     * 供客户端调用的登陆验证接口
     */
    public static function checkUserLogin(){
        $urlQueryData = array(
            'app' => filter_input(INPUT_GET, "app"),
            'sdk' => filter_input(INPUT_GET, "sdk"),
            'uin' => urlencode(filter_input(INPUT_GET, "uin")),
            'sess' => urlencode(filter_input(INPUT_GET, "sess"))
        );
        $urlQueryData = http_build_query($urlQueryData);

        //初始化
        $ch = curl_init();
        $checkLoginUrl = self::$chkLoginUrl.$urlQueryData;

        //设置选项，包括URL
        curl_setopt($ch, CURLOPT_URL, $checkLoginUrl);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_HEADER, 0);

        //执行并获取HTML文档内容
        $result = curl_exec($ch);
        $clientHttpCode = curl_getinfo($ch,CURLINFO_HTTP_CODE);

        if($clientHttpCode != 200){
            echo "ERROR";
            return false;
        }

        if($result == null || count($result) == 0){
            echo "ERROR";
            return false;
        }else{
            if(intval($result) == self::$loginRs){
                echo "SUCCESS";
            }else{
                echo "ERROR";
            }
        }

        return false;
    }

    /**
     * 消费记录回调接口
     */
    public static function orderCallBack(){
        $urlQueryData = array(
            'app' => filter_input(INPUT_GET, "app"),
            'cbi' => filter_input(INPUT_GET, "cbi"),
            'ct' => filter_input(INPUT_GET, "ct"),
            'fee' => filter_input(INPUT_GET, "fee"),
            'pt' => filter_input(INPUT_GET, "pt"),
            'sdk' => filter_input(INPUT_GET, "sdk"),
            'ssid' => filter_input(INPUT_GET, "ssid"),
            'st' => filter_input(INPUT_GET, "st"),
            'tcd' => filter_input(INPUT_GET, "tcd"),
            'uid' => filter_input(INPUT_GET, "uid"),
            'ver' => filter_input(INPUT_GET, "ver")
        );
        $urlQueryData = http_build_query($urlQueryData);

        $fromSign = filter_input(INPUT_GET, "sign");
        $sign = md5($urlQueryData.self::$pk);

        if($fromSign === $sign){
            echo "SUCCESS";
        }else{
            echo "ERROR";
        }

        return false;
    }

    /**
     * 获取http请求状态
     * @param string $clientUrl
     * @return number
     */
    private static function _getHttpStatsCode($clientUrl){
        $clientHttpHeader = get_headers($clientUrl);
        $clientHttpStatus = $clientHttpHeader[0];
        $clientStatusData = explode(" ", $clientHttpStatus);
        $clientHttpCode = intval($clientStatusData[1]);
        return $clientHttpCode;
    }
}

?>

<?php
//调用方式

$userLoginRs = Demo_1sdk::checkUserLogin();
$orderCallBackRs = Demo_1sdk::orderCallBack();
?>


