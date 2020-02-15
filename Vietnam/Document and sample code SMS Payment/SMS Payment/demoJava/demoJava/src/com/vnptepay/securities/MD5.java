package com.vnptepay.securities;
import java.io.UnsupportedEncodingException; 
import java.net.URLDecoder;
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException; 
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

public class MD5 {
	 private static String convertToHex(byte[] data) { 
	        StringBuffer buf = new StringBuffer();
	        for (int i = 0; i < data.length; i++) { 
	            int halfbyte = (data[i] >>> 4) & 0x0F;
	            int two_halfs = 0;
	            do { 
	                if ((0 <= halfbyte) && (halfbyte <= 9)) 
	                    buf.append((char) ('0' + halfbyte));
	                else 
	                    buf.append((char) ('a' + (halfbyte - 10)));
	                halfbyte = data[i] & 0x0F;
	            } while(two_halfs++ < 1);
	        } 
	        return buf.toString();
	    } 
	 
	    public static String hash(String text) 
	    throws NoSuchAlgorithmException, UnsupportedEncodingException  { 
	        MessageDigest md;
	        md = MessageDigest.getInstance("MD5");
	        byte[] md5hash = new byte[32];
	        md.update(text.getBytes("iso-8859-1"), 0, text.length());
	        md5hash = md.digest();
	        return convertToHex(md5hash);
	    } 

	    public static void main(String[] args) {
	    	try {
//	    		MD5.hash(mt.getMtId()  
//						+ mt.getMoId()
//						+ mt.getShortCode()
//						+ mt.getKeyword()
//						+ mt.getContent()//content root
//						+ mt.getTransDate()//dungtv: getShortCode() ->getKeyword()
//						+ partnerlist.get(0).getPassword());
	    				
//	    		String clear = "10005201410201913270" + "406" + "8079" + "TSTE" + "Ban+da+thanh+toan+thanh+cong+dich+vu.+So+tien+1%2C000+VND%2C+game+frankxiong+Website%3A+http%3A%2F%2Fwww.talshow.com%2C+ho+tro%3A+0462951283" + "20141020191327" + "03573258045015b9c1a2df57e84227d1";	
	    		
	    		
	    		String   clear = "949"  + "8076" + "141124172113" + "d1c8f15d8a027fb3cc4381ffa35ac642";  
	    		
//			String input = "100042014101410523898"+"237" + "8079"+ "HN" + URLDecoder.decode("Thanh+cong") + "20141014105244" + "d1c8f15d8a027fb3cc4381ffa35ac642";
				String md5 = hash(clear);
				System.out.println(md5);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
}
