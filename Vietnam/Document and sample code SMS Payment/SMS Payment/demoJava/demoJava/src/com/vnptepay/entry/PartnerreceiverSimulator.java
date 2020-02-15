package com.vnptepay.entry;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.vnptepay.securities.MD5;
import com.vnptepay.utilities.FileLogger;

public class PartnerreceiverSimulator implements HttpHandler {

	static FileLogger logger = new FileLogger(PartnerreceiverSimulator.class);

	final String getValueDefault = "";

	@Override
	public void handle(HttpExchange arg0) throws IOException {

		String response = "Unsupport method";
		int httpstt = 200;
		String query = arg0.getRequestURI().getQuery();
		
		String ip = arg0.getRemoteAddress().getAddress().toString().replace("/", "");
		String port = arg0.getRemoteAddress().getPort() + "";
		logger.info("MO from: " + ip + ":" + port + " co noi dung: " + query + ",giao thuc:" + arg0.getProtocol() + ",phuong thuc: " + arg0.getRequestMethod());
		
		
		if (query.isEmpty()) {
			logger.info("ghi nhan that bai");
			response = "requestStatus=1&message=ghi nhan that bai";
			httpstt = 400;
			arg0.sendResponseHeaders(httpstt, response.length());
			OutputStream os = arg0.getResponseBody();
			os.write(response.getBytes());
			os.close();
			return;
		}
		

		Map<String, String> params = getQueryMap(query);
		String partnerid = params.get("partnerid") == null ? getValueDefault: params.get("partnerid");
		String moid = params.get("moid") == null ? getValueDefault: params.get("moid");
		String userid = params.get("userid") == null ? getValueDefault: params.get("userid");
		String shortcode = params.get("shortcode") == null ? getValueDefault: params.get("shortcode");
        String keyword = params.get("keyword") == null ? getValueDefault: params.get("keyword");
		String amount = params.get("amount") == null ? getValueDefault: params.get("amount");//chi xu ly doi voi 9029
		String content = params.get("content") == null ? getValueDefault: params.get("content");
		String transdate = params.get("transdate") == null ? getValueDefault: params.get("transdate");
		String checksumMO = params.get("checksum") == null ? getValueDefault: params.get("checksum");
		
		//thu duoc noi dung can xu ly
		String content_root = URLDecoder.decode(content);//thu dc chuoi co dang: KEYWORD NAP5 EXTRA -> lay EXTRA de xu ly 
		
		response = "requeststatus=200&message=nhan message thanh cong";
		
		String passwordMD5 = "mat khau sau khi md5 do EPAY cung cap";
		String checkSum_Cal_MO = "";
		try {
			checkSum_Cal_MO=MD5.hash(moid + shortcode + keyword + content + transdate + passwordMD5);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		if (!checkSum_Cal_MO.equals(checksumMO)) {
			logger.info("Check sum khong dung");
			httpstt = 400;
			response = "requeststatus=17&message=Checksum khong dung";
			arg0.sendResponseHeaders(httpstt, response.length());
			OutputStream os = arg0.getResponseBody();
			os.write(response.getBytes());
			os.close();
			return;
		}

		logger.info("MO response tra lai cho EPAY:  " + response);
		arg0.sendResponseHeaders(httpstt, response.length());
		OutputStream os = arg0.getResponseBody();
		os.write(response.getBytes());
		os.close();
		String contentMT_root = "Giao dich thanh cong!";
		String contentMT = URLEncoder.encode(contentMT_root);
		String transdateMT = new SimpleDateFormat("yyyyMMddhhmmss").format(new Date());
		String mtid = partnerid + transdateMT + createRandom(); 
		String messagetype = "1";//tr hop muon user bi tinh phi SMS
//		String messagetype = "0";//tr hop muon user duoc hoan phi SMS
		String checkSum_Cal_MT = "";
		try {
			checkSum_Cal_MT = MD5.hash(mtid + moid + shortcode + keyword + contentMT + transdateMT + passwordMD5);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		String urlMT = "http://sms.megapayment.net.vn:9099/smsApi?";
		String MTreq = "partnerid=" + partnerid 
					 + "&moid=" + moid 
					 + "&mtid=" + mtid 
					 + "&userid=" + userid 
					 + "&shortcode=" + shortcode 
					 + "&keyword=" + keyword 
					 + "&content=" + contentMT 
					 + "&messagetype=" + messagetype 
					 + "&totalmessage=1"
					 + "&messageindex=1" 
					 + "&ismore=0" 
					 + "&contenttype=1" 
					 + "&transdate=" + transdateMT 
					 + "&amount=" + amount
					 + "&checkSum=" + checkSum_Cal_MT;
		//gui MT sang EPAY
		postrequest( urlMT + MTreq);
	}

	// ham nay van con loi kh parse du lieu gui len
	/**
	 * Ham parse du lieu trong chuoi URL ra de xu ly
	 * 
	 * @param query
	 * @return
	 */
	private void postrequest( String url) {
		BufferedReader in = null;
		try {
			URL obj = new URL(url);
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();
			int responseCode = con.getResponseCode();
			logger.info("Gui sang EPAY : " + url);
			logger.info("Response Code EPAY tra lai : " + responseCode);

			in = new BufferedReader(new InputStreamReader(con.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
			System.out.println(response.toString());
			return;
		} catch (Exception e) {
			logger.fatal("SendPost", e);
			return;
		} finally {
			try {
				in.close();
			} catch (Exception e2) {
			}
		}
	}

	
	
	private static Map<String, String> getQueryMap(String query) {
		String[] params = query.split("&");
		Map<String, String> map = new HashMap<String, String>();
		for (String param : params) {
			String[] tmp = param.split("=");
			String name, value = "";
			name = "";
			try {
				name = tmp[0].trim();
				value = tmp[1].trim();
			} catch (Exception e) {
				e.printStackTrace();
				logger.fatal("getQueryMap", e);
			}
			map.put(name, value);
		}
		return map;
	}

	
	
	private static int createRandom() {
		Random rand = new Random();
		int randFuck = rand.nextInt(9990);
		int randFirst = rand.nextInt(10);
		if (randFirst == 0)
			randFirst = 1;
		randFuck = randFirst * 10000 + randFuck;
		return randFuck;
	}
	
	
	public static void main(String[] args) {
		System.out.println(createRandom());
	}

}
