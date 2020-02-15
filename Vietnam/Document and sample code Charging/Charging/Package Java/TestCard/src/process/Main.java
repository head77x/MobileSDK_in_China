/**
 * 
 */
package process;

import interfaces.ServicesSoapBindingStub;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.rmi.RemoteException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.spec.InvalidKeySpecException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;
import java.util.Scanner;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.apache.axis.AxisFault;

import config.Config;

import utilities.Debug;
import ClassLoader.Classloader;
import entities.ChangeResponse;
import entities.ChargeReponse;
import entities.LoginResponse;
import entities.LogoutResponse;
import entities.securities.MD5;
import entities.securities.RSAEncryption;
import entities.securities.TripleDESEncryption;
import files.LogException;

/**
 * @author Tieu Cong Thang
 * 
 */
public class Main {

	/**
	 * 
	 */
	public Main() {
		super();
		user = config.Config.user;
		pass = config.Config.pass;
		partnerid = config.Config.partnerid;
		mpin = config.Config.mpin;
		url = config.Config.url;
		publickey = config.Config.publickey;
		privatekey = config.Config.privatekey;
		cardlist = config.Config.cardlist;
		padding = config.Config.padding;
		partnerCode = config.Config.partnerCode;
		inputDir = config.Config.inputdir;
		outputDir = config.Config.outputdir;		
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */
	String user;
	String pass;
	String partnerid;
	static int transID = config.Config.transID;;
	String mpin = "111111";
	String url;
	String publickey;
	String privatekey;
	String cardlist;
	String padding;
	String partnerCode;
	String inputDir = "D:/Working/EPAY/Chuong trinh/Java/CardCharging/Application Build/TestCard/input_list_card/";
	String outputDir = "D:/Working/EPAY/Chuong trinh/Java/CardCharging/Application Build/TestCard/output_charging_list/";
	static Scanner sc = new Scanner(System.in);
	static BufferedReader keyboard = new BufferedReader(new InputStreamReader(
			System.in));

	public static void main(String[] args) {

		Classloader.loadLib();
		
		Main t = new Main();

		String sessionid = "";// = t.login();

		if (sessionid.length() > 0) {
			System.out.println("SessionID:" + sessionid);

		}
		// t.cardChargin(sessionid);
		boolean gb = true;
		while (gb) {
			int keyin = gui();
			switch (keyin) {
			case 0:
				gb = false;
				// System.exit(0);
				break;
			case 1:
				sessionid = t.login();
				System.out.println("Session: " + sessionid);
				try {
					Thread.sleep(1000);
					// t.logout(sessionid);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
			// }
			case 2:
				// DBFToCSV_cuoc_VTHN.convertPayBill();
				if (sessionid.length() > 0)
					t.cardChargin(sessionid);
				else {
					// System.out.println("You must login first");
					sessionid = t.login();					

					t.cardChargin(sessionid);

				}
				break;
			case 3:
				// DBFToCSV_VTHN.convertReg();
				if (sessionid.length() > 0)
					t.changeMpin(sessionid);
				else {
					// System.out.println("You must login first");
					sessionid = t.login();
					t.changeMpin(sessionid);
				}
				break;
			case 4:
				// Change password here
				if (sessionid.length() > 0)
					t.changePassword(sessionid);
				else {
					// System.out.println("You must login first");
					sessionid = t.login();
					t.changePassword(sessionid);
				}
				break;
			case 5:
				// Logout here
				// DBFToCSV_dttong_VTHN.convertChange();
				t.logout(sessionid);
				break;
			case 6:
				// Logout here
				// DBFToCSV_dttong_VTHN.convertChange();
				if (sessionid.length() > 0)
					t.checkTranstatus(sessionid);
				else {
					// System.out.println("You must login first");
					sessionid = t.login();
					t.checkTranstatus(sessionid);
				}
				break;
			case 7:
				// Charging card in as List
				// DBFToCSV_dttong_VTHN.convertChange();
				if (sessionid.length() > 0)
					t.chargingListCard(sessionid);					
				else {
					System.out.println("Try to login again");
					sessionid = t.login();
					t.chargingListCard(sessionid);
				}
				break;
			default:
				break;
			}
		}
	}

	private String encrypt(String password) {
		RSAEncryption encryptmethod = new RSAEncryption();
		encryptmethod.setPadding(padding);
		String publickey = this.publickey;
		try {
			encryptmethod.setPublicKeyStr(publickey);
			return encryptmethod.encrypt(password);
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (InvalidKeySpecException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (NoSuchPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (NoSuchProviderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}

	public static int gui() {
		System.out.println("*************************");
		System.out.println("CLIENT TEST CARD CHARGING");
		
		System.out.println("1. Login");
		System.out.println("2. Card charging");
		System.out.println("3. Change Mpin");
		System.out.println("4. Change Password");
		System.out.println("5. Logout");
		System.out.println("6. Check Trans");
		System.out.println("7. ChargingList");
		System.out.println("0. Exit");

		int key1 = sc.nextInt();
		return key1;
	}

	private void cardChargin(String sessionID) {
		// ServicesSoapBindingStub service;
		try {
			URL url_ = new URL(url);
			// "http://192.168.0.85:10001/CardChargingGW/services/Services?wsdl");

			ServicesSoapBindingStub service = new ServicesSoapBindingStub(url_,
					null);
			// service.setTimeout(timeout);
			String strTransID = partnerCode + "_" + getDateTime() + "_"
					+ transID;
			System.out.println("Generate transid: " + strTransID);
			transID++;
			String card_data = "123456:123456789:10000:VNP";
			String seri;
			String mathe;
			String value;
			String MNCC;
			String cardinlist = cardlist;
			sc.nextLine();
			System.out.println("Seri the: ");
			seri = sc.nextLine();
			System.out.println("Ma the: ");
			mathe = sc.nextLine();
			System.out.println("Gia tri: ");
			value = sc.nextLine();
			System.out.println("Telco Code: ");
			MNCC = sc.nextLine();

			card_data = seri.trim() + ":" + mathe.trim() + ":" + value.trim()
					+ ":" + MNCC.trim();
			// card_data = mathe.trim() + ":" + value.trim()
			// + ":" + MNCC.trim();
			String m5Session = MD5.hash(sessionID);
			System.out.println("SessinID:" + sessionID);
			System.out.println("Sm5Sessoin:" + m5Session);
			System.out.println("Trans: " + strTransID);
			String enCard_date = TripleDESEncryption.encrypt(sessionID,
					card_data);
			
			System.out.println("encardData: " + enCard_date);

			String enMpin = TripleDESEncryption.encrypt(sessionID, mpin);
			
			String target = config.Config.target;
			System.out.println("Target is: "+target);
			ChargeReponse response = new ChargeReponse();
			response = service.cardCharging(strTransID, user, partnerid,
					enMpin, target, enCard_date, m5Session);
			System.out.println("Status: " + response.getStatus());
			System.out.println("TransID: " + response.getTransid());
			System.out.println("Message: " + response.getMessage());
			Thread.sleep(500);
//			Cho nay can kiem tra xem neu trang thai giao dich tra ve la thanh cong thi moi thuc hien 
//			giai ma responseamount tra ve.
			if(response.getStatus().equalsIgnoreCase("1"))
			System.out.println("Amount response: "
					+ TripleDESEncryption.decrypt(sessionID,
							response.getResponseamount()));
		} catch (AxisFault e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchProviderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private ChargeReponse cardChargingList(String sessionID, String mathe,
			String serial, String value, String svCode) {
		ChargeReponse response =  null;
		try {
			URL url_ = new URL(url);

			ServicesSoapBindingStub service = new ServicesSoapBindingStub(url_,
					null);
			// service.setTimeout(timeout);
			String strTransID = partnerCode + "_" + getDateTime() + "_"
					+ transID;
			System.out.println("Generate transid: " + strTransID);
			transID++;
			String card_data = "123456:123456789:10000:VNP";
			Debug.showMessage("transID: " + transID + "\r\t" +"mathe: " + mathe + "\r\t"
					+"value: " + value + "\r\t"   +"svCode: " + svCode + "\r\t-------------");
			card_data = serial.trim() + ":" + mathe.trim() + ":" + value.trim()
					+ ":" + svCode.trim();
			// card_data = mathe.trim() + ":" + value.trim()
			// + ":" + MNCC.trim();
			String m5Session = MD5.hash(sessionID);
			String enCard_date = TripleDESEncryption.encrypt(sessionID,
					card_data);
			// System.out.println("SessinID:" + m5Session);
			// System.out.println("Trans: " + strTransID);
			// System.out.println("encardData: " + enCard_date);

			String enMpin = TripleDESEncryption.encrypt(sessionID, mpin);
							
			String target = config.Config.target+transID;
			System.out.println("Target: "+target);
			response = service.cardCharging(strTransID, user, partnerid,
					enMpin, target, enCard_date, m5Session);

			// System.out.println("Status: " + response.getStatus());
			// System.out.println("TransID: " + response.getTransid());
			// System.out.println("Message: " + response.getMessage());
			// Thread.sleep(500);
			// System.out.println("Amount response: "
			// + TripleDESEncryption.decrypt(sessionID,
			// response.getResponseamount()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			Debug.showError("cardChargingList" + "/r" + e);
			LogException.writeSystemEx("cardChargingList()", e);
		}
		return response;
	}

	private String login() {
		try {
			// URL url = new URL(
			// "http://192.168.0.119:8080/CardChargingGW/services/Services?wsdl");
			URL url_ = new URL(url);
			// "http://192.168.0.85:10001/CardChargingGW/services/Services?wsdl");
			ServicesSoapBindingStub service = new ServicesSoapBindingStub(url_,
					null);
			String key = privatekey;

			String encryptpass = encrypt(pass);
			System.out.println(user);
			System.out.println(pass);
			System.out.println(partnerid);
			System.out.println(encryptpass);
			System.out.println(publickey);

			LoginResponse response = service
					.login(user, encryptpass, partnerid);

			if (response.getStatus().equalsIgnoreCase("1")) {
				String sessionid = response.getSessionid();
				RSAEncryption rsa = new RSAEncryption();
				rsa.setPrivateKeyStr(key);
				rsa.setPadding(padding);
				return rsa.decrypt(sessionid);

			} else {
				System.out.println(response.getStatus());
				System.out.println(response.getMessage());
			}
		} catch (AxisFault e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		} catch (InvalidKeySpecException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		} catch (NoSuchPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		} catch (NoSuchProviderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		}

		return "";
	}

	private void logout(String sessionID) {
		URL url_;
		try {
			String m5Session = MD5.hash(sessionID);
			url_ = new URL(url);
			// "http://192.168.0.119:8080/CardChargingGW/services/Services?wsdl");
			ServicesSoapBindingStub service = new ServicesSoapBindingStub(url_,
					null);
			String key = privatekey;
			// MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCT5fsVTJu0/u5IqxV6rOCddbg8VW3Y3M9FJuwuid0PfC7cK343wJG55gjH+52SKQcL1C45ivTtlIxhW7NjNUrD9r9XQXZh/eVVeU69Yeg9GB12C58DmLu76xpkySzsCoV3kHsPW+hukEdY6ey9B01+pKT3WWS+oNudkE7q3zowT8DQPv8icLrlMOt0ssJMSZ3Xk9oXCcyLC5ANlZNxD3uETwuap/LfJHzDoSnd2+tAsBUp/9xjIyF6C1fqLd1+eWh80+QCwt3ExdRfUHuLaIwnyfk5XiMuR8B3f9G+Y7sEqXm8s4YtWKmgsJxenSLPA2XrtK+HxX4LF7rdScHjGjE3AgMBAAECggEAHHrQ2s0hvrzIjd3ECRd5OVkN3TBmMrhygVJ5cIzDsNOtAmCtsXa3mSCe2EOvmBGmdbSqIhKMD6PnVGggJx6AAzRkrBzC+yO1Ibx2WSmdWwZlxfF+8WZb4FfpgTbsG5f7E4cS62Y7X+8QjiKdn9jkJ1r1GVxxdfPr1m+PgtLxlZO6C6vqorHFZzzaVmpvjyrfFKw6jEtRcfkz518uZVxfvfRMbF+hSImqZOC4cj+u+lsDKqhjzvxlOdDoUkerlE+/KLh7GF+9nFmGNmJsMN4TGIS8HB0pSOmyk8i8ypsLPpZMybFdBQxEf9RwEVdL251UDDbCq0BCvaate+Qh8SAWoQKBgQDlcoejOwE85s9z/H4MEu4HxQ+GtLRJUgDID8I48XjihVs3vI8EI3cGmSdlOTU2YOwdGZcfRTtldyUyZFwZIbeFDPsHhSEwvaSU+T6qTxHwjbsAc389YSw4b38w/N3P7ehHfk2JugReuWcBWURyWMeRNamTKxFr9mN+s5QNMkHSHQKBgQClA4dbm491smMOuzZ09EHmaUVLgLlcp5VpxmzBX85RtPN0bpvHieDYdQ/u8EWjEBXPN12nTXMhZIyvj2TrT3bDNuS2LMHuBR5v133tFNuZRvk2lc81hVGAIWnbMNoa7dQInlg34MMuVv/uepuv/0HC1CvAjQEId6rXFxh/mVqwYwKBgDIkT0P6txCKGDfuq9UTpfUIuZXkk6maRBV0bCtpidNm9UI+8LokzfQhMBzM3bYehDrvxrjMtmg8G2Lhz8amOabX6VwBWfl+2CK+PVWWpgL91ioJE3tkaveCVjdsa0TvZt2I2oUIo7/XoI0I5w5eHG69XWuN8+a2F5QuxmID46J5AoGBAKHO/AQQXnSDIC9p1NSKT7SotZJ7/0ej7Rdzw2E7mQz162TYsVjREvIumBks8pwbQceX+vX7NFIiTvI4IjW8DjEOuucIrIHB8z6oiIraURvURLwJ2s4YlPqXyT1ugfC2FZz96HOiqsHd/cjT4aaLHuj1NJHzsnejIJsZwqQctJkRAoGAdgmBETuq54q4Y0MxJi1RaLkRQWGtGI7/o8UPD+4iRKmMkoHelKeXsQ5ed88gHR82V1MvC3WpUzS4hwqsahCzeb+xb/FVjoBOCo8Z4I/4tdzFHZ242QEmM3lNs7QrtulL5LA9Jtab4G4mXY/Qwyli3SJDu0opCOmY8Mec015wzbo=
			LogoutResponse response = service
					.logout(user, partnerid, m5Session);
			System.out.println("Logout Response: " + response.getStatus());
			System.out.println("Logout Message: " + response.getMessage());
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AxisFault e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void changePassword(String sessionID) {
		URL url_;
		try {
			String strTransID = partnerid + "_" + getDateTime() + "_" + transID;
			System.out.println("Mat khau cu: " + pass);
			sc.nextLine();
			System.out.println("Mat khau moi: ");
			String newPass = sc.nextLine();
			if (newPass.length() == 0)
				return;
			if (newPass.equalsIgnoreCase(pass))
				return;
			String enNewPass, enOldPass;
			String m5Session = MD5.hash(sessionID);
			enNewPass = TripleDESEncryption.encrypt(sessionID, newPass);
			enOldPass = TripleDESEncryption.encrypt(sessionID, pass);
			url_ = new URL(url);
			// "http://192.168.0.119:8080/CardChargingGW/services/Services?wsdl");
			ServicesSoapBindingStub service = new ServicesSoapBindingStub(url_,
					null);
			String key = privatekey;
			// MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCT5fsVTJu0/u5IqxV6rOCddbg8VW3Y3M9FJuwuid0PfC7cK343wJG55gjH+52SKQcL1C45ivTtlIxhW7NjNUrD9r9XQXZh/eVVeU69Yeg9GB12C58DmLu76xpkySzsCoV3kHsPW+hukEdY6ey9B01+pKT3WWS+oNudkE7q3zowT8DQPv8icLrlMOt0ssJMSZ3Xk9oXCcyLC5ANlZNxD3uETwuap/LfJHzDoSnd2+tAsBUp/9xjIyF6C1fqLd1+eWh80+QCwt3ExdRfUHuLaIwnyfk5XiMuR8B3f9G+Y7sEqXm8s4YtWKmgsJxenSLPA2XrtK+HxX4LF7rdScHjGjE3AgMBAAECggEAHHrQ2s0hvrzIjd3ECRd5OVkN3TBmMrhygVJ5cIzDsNOtAmCtsXa3mSCe2EOvmBGmdbSqIhKMD6PnVGggJx6AAzRkrBzC+yO1Ibx2WSmdWwZlxfF+8WZb4FfpgTbsG5f7E4cS62Y7X+8QjiKdn9jkJ1r1GVxxdfPr1m+PgtLxlZO6C6vqorHFZzzaVmpvjyrfFKw6jEtRcfkz518uZVxfvfRMbF+hSImqZOC4cj+u+lsDKqhjzvxlOdDoUkerlE+/KLh7GF+9nFmGNmJsMN4TGIS8HB0pSOmyk8i8ypsLPpZMybFdBQxEf9RwEVdL251UDDbCq0BCvaate+Qh8SAWoQKBgQDlcoejOwE85s9z/H4MEu4HxQ+GtLRJUgDID8I48XjihVs3vI8EI3cGmSdlOTU2YOwdGZcfRTtldyUyZFwZIbeFDPsHhSEwvaSU+T6qTxHwjbsAc389YSw4b38w/N3P7ehHfk2JugReuWcBWURyWMeRNamTKxFr9mN+s5QNMkHSHQKBgQClA4dbm491smMOuzZ09EHmaUVLgLlcp5VpxmzBX85RtPN0bpvHieDYdQ/u8EWjEBXPN12nTXMhZIyvj2TrT3bDNuS2LMHuBR5v133tFNuZRvk2lc81hVGAIWnbMNoa7dQInlg34MMuVv/uepuv/0HC1CvAjQEId6rXFxh/mVqwYwKBgDIkT0P6txCKGDfuq9UTpfUIuZXkk6maRBV0bCtpidNm9UI+8LokzfQhMBzM3bYehDrvxrjMtmg8G2Lhz8amOabX6VwBWfl+2CK+PVWWpgL91ioJE3tkaveCVjdsa0TvZt2I2oUIo7/XoI0I5w5eHG69XWuN8+a2F5QuxmID46J5AoGBAKHO/AQQXnSDIC9p1NSKT7SotZJ7/0ej7Rdzw2E7mQz162TYsVjREvIumBks8pwbQceX+vX7NFIiTvI4IjW8DjEOuucIrIHB8z6oiIraURvURLwJ2s4YlPqXyT1ugfC2FZz96HOiqsHd/cjT4aaLHuj1NJHzsnejIJsZwqQctJkRAoGAdgmBETuq54q4Y0MxJi1RaLkRQWGtGI7/o8UPD+4iRKmMkoHelKeXsQ5ed88gHR82V1MvC3WpUzS4hwqsahCzeb+xb/FVjoBOCo8Z4I/4tdzFHZ242QEmM3lNs7QrtulL5LA9Jtab4G4mXY/Qwyli3SJDu0opCOmY8Mec015wzbo=
			System.out.println("SessionID: " + sessionID);
			ChangeResponse response = service.changePassword(strTransID, user,
					partnerid, enOldPass, enNewPass, m5Session);

			System.out.println("Change Password Response: "
					+ response.getStatus());
			if (response.getStatus().equalsIgnoreCase("1"))
				pass = newPass;
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AxisFault e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchProviderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void changeMpin(String sessionID) {
		URL url_;
		try {
			String strTransID = partnerid + "_" + getDateTime() + "_" + transID;
			System.out.println("MPin cu: " + mpin);
			sc.nextLine();
			System.out.println("MPin moi: ");
			String newMpin = sc.nextLine();
			if (newMpin.length() == 0)
				return;
			if (newMpin.equalsIgnoreCase(mpin))
				return;
			String enOldMpin, enNewMpin;
			String m5Session = MD5.hash(sessionID);

			enNewMpin = TripleDESEncryption.encrypt(sessionID, newMpin);
			enOldMpin = TripleDESEncryption.encrypt(sessionID, mpin);
			url_ = new URL(url);
			// "http://192.168.0.85:10001/CardChargingGW/services/Services?wsdl");
			ServicesSoapBindingStub service = new ServicesSoapBindingStub(url_,
					null);
			String key = privatekey;
			// MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCT5fsVTJu0/u5IqxV6rOCddbg8VW3Y3M9FJuwuid0PfC7cK343wJG55gjH+52SKQcL1C45ivTtlIxhW7NjNUrD9r9XQXZh/eVVeU69Yeg9GB12C58DmLu76xpkySzsCoV3kHsPW+hukEdY6ey9B01+pKT3WWS+oNudkE7q3zowT8DQPv8icLrlMOt0ssJMSZ3Xk9oXCcyLC5ANlZNxD3uETwuap/LfJHzDoSnd2+tAsBUp/9xjIyF6C1fqLd1+eWh80+QCwt3ExdRfUHuLaIwnyfk5XiMuR8B3f9G+Y7sEqXm8s4YtWKmgsJxenSLPA2XrtK+HxX4LF7rdScHjGjE3AgMBAAECggEAHHrQ2s0hvrzIjd3ECRd5OVkN3TBmMrhygVJ5cIzDsNOtAmCtsXa3mSCe2EOvmBGmdbSqIhKMD6PnVGggJx6AAzRkrBzC+yO1Ibx2WSmdWwZlxfF+8WZb4FfpgTbsG5f7E4cS62Y7X+8QjiKdn9jkJ1r1GVxxdfPr1m+PgtLxlZO6C6vqorHFZzzaVmpvjyrfFKw6jEtRcfkz518uZVxfvfRMbF+hSImqZOC4cj+u+lsDKqhjzvxlOdDoUkerlE+/KLh7GF+9nFmGNmJsMN4TGIS8HB0pSOmyk8i8ypsLPpZMybFdBQxEf9RwEVdL251UDDbCq0BCvaate+Qh8SAWoQKBgQDlcoejOwE85s9z/H4MEu4HxQ+GtLRJUgDID8I48XjihVs3vI8EI3cGmSdlOTU2YOwdGZcfRTtldyUyZFwZIbeFDPsHhSEwvaSU+T6qTxHwjbsAc389YSw4b38w/N3P7ehHfk2JugReuWcBWURyWMeRNamTKxFr9mN+s5QNMkHSHQKBgQClA4dbm491smMOuzZ09EHmaUVLgLlcp5VpxmzBX85RtPN0bpvHieDYdQ/u8EWjEBXPN12nTXMhZIyvj2TrT3bDNuS2LMHuBR5v133tFNuZRvk2lc81hVGAIWnbMNoa7dQInlg34MMuVv/uepuv/0HC1CvAjQEId6rXFxh/mVqwYwKBgDIkT0P6txCKGDfuq9UTpfUIuZXkk6maRBV0bCtpidNm9UI+8LokzfQhMBzM3bYehDrvxrjMtmg8G2Lhz8amOabX6VwBWfl+2CK+PVWWpgL91ioJE3tkaveCVjdsa0TvZt2I2oUIo7/XoI0I5w5eHG69XWuN8+a2F5QuxmID46J5AoGBAKHO/AQQXnSDIC9p1NSKT7SotZJ7/0ej7Rdzw2E7mQz162TYsVjREvIumBks8pwbQceX+vX7NFIiTvI4IjW8DjEOuucIrIHB8z6oiIraURvURLwJ2s4YlPqXyT1ugfC2FZz96HOiqsHd/cjT4aaLHuj1NJHzsnejIJsZwqQctJkRAoGAdgmBETuq54q4Y0MxJi1RaLkRQWGtGI7/o8UPD+4iRKmMkoHelKeXsQ5ed88gHR82V1MvC3WpUzS4hwqsahCzeb+xb/FVjoBOCo8Z4I/4tdzFHZ242QEmM3lNs7QrtulL5LA9Jtab4G4mXY/Qwyli3SJDu0opCOmY8Mec015wzbo=
			System.out.println("SessionID: " + sessionID);
			ChangeResponse response = service.changeMPIN(strTransID, user,
					partnerid, enOldMpin, enNewMpin, m5Session);

			System.out.println("Change Mpin Response: " + response.getStatus());
			if (response.getStatus().equalsIgnoreCase("1"))
				mpin = newMpin;
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AxisFault e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchProviderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void checkTranstatus(String sessionID) {
		URL url_;
		try {
			// sc.
			sc.nextLine();
			System.out.println("Transaction id: ");
			String transid = sc.nextLine();
			if (transid.length() == 0)
				return;
			if (transid.equalsIgnoreCase(""))
				return;

			url_ = new URL(url);
			// "http://192.168.0.85:10001/CardChargingGW/services/Services?wsdl");
			ServicesSoapBindingStub service = new ServicesSoapBindingStub(url_,
					null);
			String key = privatekey;
			String m5Session = MD5.hash(sessionID);
			// MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCT5fsVTJu0/u5IqxV6rOCddbg8VW3Y3M9FJuwuid0PfC7cK343wJG55gjH+52SKQcL1C45ivTtlIxhW7NjNUrD9r9XQXZh/eVVeU69Yeg9GB12C58DmLu76xpkySzsCoV3kHsPW+hukEdY6ey9B01+pKT3WWS+oNudkE7q3zowT8DQPv8icLrlMOt0ssJMSZ3Xk9oXCcyLC5ANlZNxD3uETwuap/LfJHzDoSnd2+tAsBUp/9xjIyF6C1fqLd1+eWh80+QCwt3ExdRfUHuLaIwnyfk5XiMuR8B3f9G+Y7sEqXm8s4YtWKmgsJxenSLPA2XrtK+HxX4LF7rdScHjGjE3AgMBAAECggEAHHrQ2s0hvrzIjd3ECRd5OVkN3TBmMrhygVJ5cIzDsNOtAmCtsXa3mSCe2EOvmBGmdbSqIhKMD6PnVGggJx6AAzRkrBzC+yO1Ibx2WSmdWwZlxfF+8WZb4FfpgTbsG5f7E4cS62Y7X+8QjiKdn9jkJ1r1GVxxdfPr1m+PgtLxlZO6C6vqorHFZzzaVmpvjyrfFKw6jEtRcfkz518uZVxfvfRMbF+hSImqZOC4cj+u+lsDKqhjzvxlOdDoUkerlE+/KLh7GF+9nFmGNmJsMN4TGIS8HB0pSOmyk8i8ypsLPpZMybFdBQxEf9RwEVdL251UDDbCq0BCvaate+Qh8SAWoQKBgQDlcoejOwE85s9z/H4MEu4HxQ+GtLRJUgDID8I48XjihVs3vI8EI3cGmSdlOTU2YOwdGZcfRTtldyUyZFwZIbeFDPsHhSEwvaSU+T6qTxHwjbsAc389YSw4b38w/N3P7ehHfk2JugReuWcBWURyWMeRNamTKxFr9mN+s5QNMkHSHQKBgQClA4dbm491smMOuzZ09EHmaUVLgLlcp5VpxmzBX85RtPN0bpvHieDYdQ/u8EWjEBXPN12nTXMhZIyvj2TrT3bDNuS2LMHuBR5v133tFNuZRvk2lc81hVGAIWnbMNoa7dQInlg34MMuVv/uepuv/0HC1CvAjQEId6rXFxh/mVqwYwKBgDIkT0P6txCKGDfuq9UTpfUIuZXkk6maRBV0bCtpidNm9UI+8LokzfQhMBzM3bYehDrvxrjMtmg8G2Lhz8amOabX6VwBWfl+2CK+PVWWpgL91ioJE3tkaveCVjdsa0TvZt2I2oUIo7/XoI0I5w5eHG69XWuN8+a2F5QuxmID46J5AoGBAKHO/AQQXnSDIC9p1NSKT7SotZJ7/0ej7Rdzw2E7mQz162TYsVjREvIumBks8pwbQceX+vX7NFIiTvI4IjW8DjEOuucIrIHB8z6oiIraURvURLwJ2s4YlPqXyT1ugfC2FZz96HOiqsHd/cjT4aaLHuj1NJHzsnejIJsZwqQctJkRAoGAdgmBETuq54q4Y0MxJi1RaLkRQWGtGI7/o8UPD+4iRKmMkoHelKeXsQ5ed88gHR82V1MvC3WpUzS4hwqsahCzeb+xb/FVjoBOCo8Z4I/4tdzFHZ242QEmM3lNs7QrtulL5LA9Jtab4G4mXY/Qwyli3SJDu0opCOmY8Mec015wzbo=
			System.out.println("SessionID: " + sessionID);

			ChargeReponse response = new ChargeReponse();
			response = service.getTransactionStatus(transid, user, partnerid,
					m5Session);
			if (response.getStatus().equalsIgnoreCase("1")) {
				String responseamt = TripleDESEncryption.decrypt(sessionID,
						response.getResponseamount());
				System.out.println(responseamt);
			}
			System.out.println(response.getStatus());
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AxisFault e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchProviderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void chargingListCard(String sessionid) {
		if (!getListFileInput())
			System.out.println("No file to select");
		else {
			System.out.println("Input sv provider:");
			String providerCode = "";
			try {
				providerCode = keyboard.readLine();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				System.out.println("System error");
			}
			System.out.println("Input file name:");
			String fileName = "";
			try {				
				fileName = keyboard.readLine();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("System error");
			}

			String file2Read = inputDir + fileName + ".txt";

			ArrayList<String> arrdata = readFileData(file2Read);
			ArrayList<String> outData = new ArrayList<String>();
			
			for (String string : arrdata) {
				ChargeReponse chargeRsp = cardChargingList(sessionid, string,
						"", "", providerCode);
				if (chargeRsp != null) {
					String outputDataLine = "";
					if(chargeRsp.getStatus().equalsIgnoreCase("1"))
					{
						String chargeRspAmount = "";
						try {
							chargeRspAmount = TripleDESEncryption.decrypt(sessionid, chargeRsp.getResponseamount());
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							Debug.showError("3desdecrypt " + "/r" + e);
							LogException.writeSystemEx("3desdecrypt ", e);
						}
						chargeRsp.setResponseamount(chargeRspAmount);
					}
					outputDataLine = string+"," + chargeRsp.getStatus() +"," +chargeRsp.getResponseamount() + ","  +chargeRsp.getMessage();
					outData.add(outputDataLine);
					
					try {
						Thread.sleep(Config.shotdelaytime);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
			writeToFile(outData, fileName);
		}
	}

	private void writeToFile(ArrayList<String> arroutput, String inputFilename) {						
		String fileresult = outputDir +  "output_" + inputFilename + ".csv";
		try {
			File f = new File(fileresult);
			if (f.exists() == false) {
				f.createNewFile();
			}
			FileWriter outputFileReader = new FileWriter(fileresult, true);
			PrintWriter outputStream = new PrintWriter(outputFileReader);
			for (String string : arroutput) {
				try {
					outputStream.println(string);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("Loi trong qua trinh ghi file");
				}
			}			
			outputStream.close();
		} catch (IOException e) {
			LogException.writeSystemEx("writeToFile ", e);
		}		
	}
	
	
	
	private ArrayList<String> readFileData(String inputFile) {
		BufferedReader input;
		ArrayList<String> arrData = new ArrayList<String>();
		try {
			input = new BufferedReader(new FileReader(inputFile));

			String line;

			while ((line = input.readLine()) != null) {								
				if (line.trim().length() == 0)
					continue;
				arrData.add(line);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Loi doc file");
			LogException.writeSystemEx("readFileData ", e);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Loi doc file");
			LogException.writeSystemEx("readFileData ", e);
		}

		return arrData;
	}

	private boolean getListFileInput() {
		java.io.File dir = new java.io.File(
				inputDir);

		String[] children = dir.list();
		if (children == null) {
			// Either dir does not exist or is not a directory
		} else {
			for (int i = 0; i < children.length; i++) {
				// Get filename of file or directory
				String filename = children[i];
			}
		}

		// It is also possible to filter the list of returned files.
		// This example does not return any files that start with `.'.
		FilenameFilter filter = new FilenameFilter() {
			public boolean accept(java.io.File dir, String name) {
				return !name.startsWith(".");
			}
		};
		children = dir.list(filter);

		// The list of files can also be retrieved as File objects
		java.io.File[] files = dir.listFiles();

		if (files != null) {
			System.out.println("List file available: ");
			for (int i = 0; i < files.length; i++) {
				System.out.println(i +". " + files[i].getName() + "\r");
			}
			System.out.println("List file available");
			return true;
		}
		return false;
		// This filter only returns directories
		// FileFilter fileFilter = new FileFilter() {
		// public boolean accept(java.io.File file) {
		// return file.isDirectory();
		// }
		// };
		// files = dir.listFiles(fileFilter);
	}

	private String getDateTime() {
		DateFormat dateFormat = new SimpleDateFormat("MMddHHmm");
		Date date = new Date();
		return dateFormat.format(date);
	}

	/**
	 * @return the user
	 */
	public String getUser() {
		return user;
	}

	/**
	 * @param user
	 *            the user to set
	 */
	public void setUser(String user) {
		this.user = user;
	}

	/**
	 * @return the pass
	 */
	public String getPass() {
		return pass;
	}

	/**
	 * @param pass
	 *            the pass to set
	 */
	public void setPass(String pass) {
		this.pass = pass;
	}

	/**
	 * @return the partnerid
	 */
	public String getPartnerid() {
		return partnerid;
	}

	/**
	 * @param partnerid
	 *            the partnerid to set
	 */
	public void setPartnerid(String partnerid) {
		this.partnerid = partnerid;
	}

}
