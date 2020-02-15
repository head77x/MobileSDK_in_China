package com.cp.yjsdk.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cp.yjsdk.utils.HTTPHelper;
import com.cp.yjsdk.utils.MD5;

public class SampleAction {
	
	// Ӧ�����׽ӷ����ȡ��ͬ����Կ
	private final String PRIVATE_KEY = "";
	private final int LOGIN_RESULT_SUCCESS = 0;
	private final String CHECK_LOGIN_URL = "http://sync.1sdk.cn/login/check.html";

	
	/**
	 * ���ͻ��˵��õĵ�½��֤�ӿ�
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	public void checkUserLogin(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		PrintWriter w = response.getWriter();
		String app = request.getParameter("app");
		String sdk = request.getParameter("sdk");
		String uin = request.getParameter("uin");
		String sess = request.getParameter("sess");

		StringBuilder getUrl = new StringBuilder();
		getUrl.append(CHECK_LOGIN_URL);
		getUrl.append("?app=");
		getUrl.append(app);
		getUrl.append("&sdk=");
		getUrl.append(sdk);
		getUrl.append("&uin=");
		getUrl.append(URLEncoder.encode(uin, "UTF-8"));
		getUrl.append("&sess=");
		getUrl.append(URLEncoder.encode(sess, "UTF-8"));
		
		try {
			HTTPHelper.SimpleHTTPResult ret = HTTPHelper.simpleInvoke ("GET", getUrl.toString(), null, null);
			// ����ķ���ֵ��CP�������Ϳͻ��˶��壬����ķ���ֵֻ���ο���
			if (ret.code != 200) {
				w.write("ERROR");
				return;
			}
			if (ret.data == null || ret.data.length == 0) {
				w.write("ERROR");
				return;
			} else {
				String r = new String (ret.data);
				Integer i = new Integer(r);
				if (i == LOGIN_RESULT_SUCCESS) {
					w.write("SUCCESS");
				} else {
					w.write("ERROR");
				}
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			w.flush();
			w.close();
		}
	}

	
	
	
	/**
	 * ���Ѽ�¼�ص��ӿ�
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	public void orderCallBack(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		PrintWriter w = response.getWriter();
		StringBuffer sbEnc = new StringBuffer (); 
		sbEnc.append ("app="); 
		sbEnc.append (request.getParameter("app"));
		sbEnc.append ("&cbi="); 
		sbEnc.append (request.getParameter("cbi")); 
		sbEnc.append ("&ct="); 
		sbEnc.append (request.getParameter("ct")); 
		sbEnc.append ("&fee="); 
		sbEnc.append (request.getParameter("fee"));  
		sbEnc.append ("&pt="); 
		sbEnc.append (request.getParameter("pt"));
		sbEnc.append ("&sdk="); 
		sbEnc.append (request.getParameter("sdk"));
		sbEnc.append ("&ssid="); 
		sbEnc.append (request.getParameter("ssid")); 
		sbEnc.append ("&st=");
		sbEnc.append (request.getParameter("st")); 
		sbEnc.append ("&tcd="); 
		sbEnc.append (request.getParameter("tcd"));
		sbEnc.append ("&uid="); 
		sbEnc.append (request.getParameter("uid")); 
		sbEnc.append ("&ver="); 
		sbEnc.append (request.getParameter("ver")); 
		
		String sign = request.getParameter("sign");
		
		boolean result = MD5.encode(sbEnc + PRIVATE_KEY).equalsIgnoreCase(sign);
		
		if(result){
			// �˴�CP���Գ־û����Ѽ�¼
			//st==1��֧���ɹ������ܸ��û�������

			// �����ɹ�����Ҫ����SUCCESS�����׽ӷ������Ѿ����ճɹ�
			w.write("SUCCESS");
		}else{
			// ����ERROR�׽ӷ����������һ���Ĳ�������ͬ�����Ѽ�¼��CP
			w.write("ERROR");
		}
		w.flush();
		w.close();
	}
}
