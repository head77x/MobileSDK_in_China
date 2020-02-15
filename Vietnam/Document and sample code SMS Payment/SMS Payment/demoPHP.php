<?php
class payment extends CI_Controller
{
    public function sms_payment()
    {
        // url demo: http://charge.vn/payment/sms_payment?partnerid=10027&moid=237&userid=84982162261&shortcode=9029&keyword=HN&subkeyword=HCM&content=MW+1000+DM+NAP+tentk&transdate=20141013174758&checksum=f02c9c5172b167ac6ab8bd0063658c98&amount=100000
        // IP: 167.114.152.223
        $this->load->library('user_agent');

        if ($this->agent->is_browser())
        {
            $agent = 'Browser: '.$this->agent->browser().' '.$this->agent->version().' | ';
        }
        elseif ($this->agent->is_robot())
        {
            $agent = 'Robot: '.$this->agent->robot().' | ';
        }
        elseif ($this->agent->is_mobile())
        {
            $agent = 'Mobile: '.$this->agent->mobile().' | ';
        }
        else
        {
            $agent = 'Agent: Unidentified User Agent | ';
        }
        $agent .= 'Platform: '.$this->agent->platform().' | ';
        $agent .= 'Referrer: '.$this->agent->referrer().' | ';
        $agent .= 'IP: '.$this->input->ip_address().' | ';
        $get = $this->input->get();
        $agent .= json_encode($get);
        log_message('error', 'SMS PAYMENT - DATA: '.$agent, false, true);
        if(!empty($get)){
            if(!empty($get['partnerid']) && $get['partnerid'] == SMSP_PARTNER_ID && !empty($get['moid']) && !empty($get['userid']) && !empty($get['shortcode'])
            && !empty($get['keyword']) && !empty($get['subkeyword']) && !empty($get['content']) && !empty($get['transdate'])
            && !empty($get['checksum']) && $get['checksum'] == $this->get_checksum_reponse($get)
            && isset($get['amount'])){
                log_message('error', 'SMS PAYMENT - INFO: Data validated', false, true);
                $this->load->model('mpayment');

                //check MoID đã tồn tại chưa, nếu đã tồn tại thì báo lỗi
                $moid = (int)($get['moid']);
                $check_moid = $this->mpayment->smsp_check_moid($moid);
                if($check_moid) {
                    log_message('error', 'SMS PAYMENT - ERROR: MoID is available', false, true);
                    set_status_header(400);
                    echo 'requeststatus=2';
                    die;
                }

                //nếu chưa tồn tại MoID thì chèn dữ liệu mới nhận vào db
                $insert = array(
                    'mo_id' => $moid,
                    'mt_id' => '',
                    'phone_number' => $get['userid'],
                    'user_id' => $get['subkeyword'],
                    'amount' => $get['amount'],
                    'transdate' => $get['transdate'],
                    'shortcode' => $get['shortcode'],
                    'content' => $get['content'],
                    'status' => 0
                );
                $this->mpayment->insert_data_sms_payment($insert);

                //bóc tách dữ liệu để lấy ra user_id và amount nạp vào
                $this->load->model('muser');
                /*$vtt_number = array('8496', '8497', '8498', '8416');
                $dau_so = substr($get['userid'], 0, 4);
                $content = explode(' ', $get['content']);
                if(in_array($dau_so, $vtt_number)){
                    $user_id = !empty($content[4]) ? $content[4] : '';
                    $amount = !empty($content[1]) ? (int)($content[1]/1000) : '';
                }else{
                    $user_id = !empty($content[3]) ? $content[3] : '';
                    $amount = !empty($content[2]) ? $content[2] : '';
                    if(!empty($amount)){
                        $amount = str_replace('nap', '', strtolower($amount));
                    }
                }
                if(empty($user_id) || empty($amount)){
                    log_message('error', 'SMS PAYMENT - ERROR: Empty PhoneNumber or Amount', false, true);
                    set_status_header(400); echo 'requeststatus=1';  exit;
                }*/
                $user_id = $get['subkeyword'];
                $amount = (int)($get['amount']/1000);

                //update số tiền cho khách hàng
                $this->muser->update_coin($user_id, $amount);

                //gọi MT sang SMS Payment để xác nhận (nếu ko gọi MT sẽ không được đối soát)
                $url = 'http://sms.megapayment.net.vn:9099/smsApi?';
                $url .= 'partnerid='.SMSP_PARTNER_ID;
                $url .= '&moid='.$get['moid'];
                $mtid = SMSP_PARTNER_ID.date('YmdHi').rand(0, 99999);
                $url .= '&mtid='.$mtid;
                $url .= '&userid='.$get['userid'];
                $url .= '&receivernumber='.$get['userid'];
                $url .= '&shortcode='.$get['shortcode'];
                $url .= '&keyword='.$get['keyword'];
                $mt_content = 'Ban+da+nap+thanh+cong+'.$amount.'+xu+vao+tai+khoan+tai+website+Dinhmenh.org';
                $url .= '&content='.$mt_content;
                $url .= '&messagetype=1'; 
                $url .= '&totalmessage=1';
                $url .= '&messageindex=1';
                $url .= '&ismore=0';
                $url .= '&contenttype=0';
                $mt_transdate = date('YmdHis');
                $url .= '&transdate='.$mt_transdate;
                $url .= '&checksum='.md5($mtid.$get['moid'].$get['shortcode'].$get['keyword'].$mt_content.$mt_transdate.md5(SMSP_PARTNER_PASSWORD));
                $url .= '&amount='.$get['amount'];

                log_message('error', 'SMS PAYMENT - MT RESPONSE: '.$url, false, true);

                //goi ham confirm mt
                $confirm = $this->get_curl($url);

                log_message('error', 'SMS PAYMENT - MT RESPONSE DATA: '.$confirm, false, true);

                if(!empty($confirm)){
                    $status = str_replace('requeststatus=', '', $confirm);
                    if($status == 200){
                        log_message('error', 'SMS PAYMENT - CONFIRM MT OK', false, true);
                        set_status_header(200);
                        echo 'requeststatus=200'; die;
                    }else{
                        log_message('error', 'SMS PAYMENT - ERROR CONFIRM MT: '.$status, false, true);
                        set_status_header(400);
                        echo 'requeststatus='.$status; die;
                    }
                }
                set_status_header(400);
                echo 'requeststatus=400';
                die;
            }else{
                log_message('error', 'SMS PAYMENT - ERROR: DATA not validated', false, true);
                set_status_header(400); echo 'requeststatus=17';
                die;
            }
        }else{
            log_message('error', 'SMS PAYMENT - ERROR: Empty data', false, true);
            set_status_header(400); echo 'requeststatus=1';
            die;
        }
    }

    /*
     * function get check sum response
     * author: Nguyen Tat Loi
     * date: 12/2/2015
     */
    private function get_checksum_reponse($get)
    {
        return md5($get['moid'].$get['shortcode'].$get['keyword'].str_replace(' ', '+', $get['content']).$get['transdate'].SMSP_PARTNER_PASSWORD);
    }

    /*
     * function get curl
     * author: Nguyen Tat Loi
     * date: 26/03/2014
     */
    public function get_curl($url)
    {
        $curl = curl_init();

        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, 10);

        $str = curl_exec($curl);
        if(empty($str)) $str = $this->curl_exec_follow($curl);
        curl_close($curl);

        return $str;
    }
    /*
     * function dùng curl gọi đến link
     * author: Nguyen Tat Loi
     * date: 26/03/2014
     */
    private function curl_exec_follow($ch, &$maxredirect = null)
    {
        $user_agent = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.5)".
            " Gecko/20041107 Firefox/1.0";
        curl_setopt($ch, CURLOPT_USERAGENT, $user_agent );

        $mr = $maxredirect === null ? 5 : intval($maxredirect);

        if (ini_get('open_basedir') == '' && ini_get('safe_mode' == 'Off')) {

            curl_setopt($ch, CURLOPT_FOLLOWLOCATION, $mr > 0);
            curl_setopt($ch, CURLOPT_MAXREDIRS, $mr);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        } else {

            curl_setopt($ch, CURLOPT_FOLLOWLOCATION, false);

            if ($mr > 0)
            {
                $original_url = curl_getinfo($ch, CURLINFO_EFFECTIVE_URL);
                $newurl = $original_url;

                $rch = curl_copy_handle($ch);

                curl_setopt($rch, CURLOPT_HEADER, true);
                curl_setopt($rch, CURLOPT_NOBODY, true);
                curl_setopt($rch, CURLOPT_FORBID_REUSE, false);
                do
                {
                    curl_setopt($rch, CURLOPT_URL, $newurl);
                    $header = curl_exec($rch);
                    if (curl_errno($rch)) {
                        $code = 0;
                    } else {
                        $code = curl_getinfo($rch, CURLINFO_HTTP_CODE);
                        if ($code == 301 || $code == 302) {
                            preg_match('/Location:(.*?)\n/', $header, $matches);
                            $newurl = trim(array_pop($matches));

                            if(!preg_match("/^https?:/i", $newurl)){
                                $newurl = $original_url . $newurl;
                            }
                        } else {
                            $code = 0;
                        }
                    }
                } while ($code && --$mr);

                curl_close($rch);

                if (!$mr)
                {
                    if ($maxredirect === null)
                        trigger_error('Too many redirects.', E_USER_WARNING);
                    else
                        $maxredirect = 0;

                    return false;
                }
                curl_setopt($ch, CURLOPT_URL, $newurl);
            }
        }
        return curl_exec($ch);
    }


}
?>