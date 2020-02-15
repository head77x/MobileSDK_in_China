package config;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class Config {
	public static String user;
	public static String pass;
	public static String partnerid = "charging02";
	public static String partnerCode = "00481";
	public static int transID = 1;
	public static String mpin = "ejeyckpcg";
	public static String padding = "NOPADDING";
	public static String url = "http://charging-test.megapay.net.vn:10001/CardChargingGW_V2.0/services/Services?wsdl";
	
	public static String publickey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCxjjvVYnRTcT70Cd68nE08DKwuMlSeOfbcgtTvgawgC/18p/Xs6wcg2U2xn0nn+9O6x+pJ9o5uQa6iqTgOJz1jVKWSwWuFD44muEyqMdeE1IYWbrJOFUFIU54Cau3qS3GKgWtOTAZUYqVh+cOPxgo0pW2is+swT6tz56/P0p22vwIDAQAB";
	public static String privatekey = "MIICWwIBAAKBgQDGYjPOarqFPMGorD+PHeTCt6iZzZdvIbijDdGp+CuxEu+5aidYq1FjrCfxsrW2g+R9cQ8/5ELz+vj7UcvWh9YgFq/iTpye7vlKxe6ix6jRKg/awDqJtEI2Z0tLoHcGw8LWSro2gJlBww1xsZBHH5TFmePuEsl1S0bDcSkjb4rh9wIDAQABAoGAKhv4MS14cAWoebwuNZu7zhUb5aG9LiqzPXEWewShiZGibvH4bhrXSNfnFqe/aIFwg6v297HlAFLafMYtBVmJ+qAHJ8yB1teqnxHV5ZHZjHjR5z4OKuTUwPUbHTaSmsY9/RqC8G+5JWypmuzGEjjVkoELoNsb+aregiiuzUmPUPECQQDlB62zUddXq/VMwOFbBG8QUXLk6IHlpPPMT6YNli8q9PAD1ossecOqIUB+QxUo4Sz+pwRnpyrpKKa9kNs5wg9vAkEA3b6o9GeXg4wlrFIJydmBgddI9ZeJ1zJKBjbXpzwrHHYq33vXl+OzEFivB/aXlcv0f4ViadghvAxjyaRa07SR+QJASxjOctrmAkBHKYihHAgDJtWeF8LJPPRuYFLJfvD8vFgeDxQdBFNUvgczL3Ntj77t0v4OqrIcluEWc1f5GiIwjwJAcD9uWWIDEaUlAOj6aYJAC5EGLsQKE7QyQpkKa26KyDqNE1omVY3++9xYpehO7ZYz60WC/t9YnE+NR+p5y8cRSQJADz39CV8dlXyaXe6nKYUAu/fEKXUcN4goa66c81TZ8Bkroh/ZAgqvCj8l6qhMwDjIU67d7ry31vmmLcKunXnVjg==";
	public static String cardlist = "0";
	public static String inputdir = "";
	public static String outputdir = "";
	public static String sys_log_dir_exception = ".";
	public static String log_dir_action = ".";
	public static String log_dir_exception = ".";
	public static String target = "name";
	public static int shotdelaytime = 100;
	
	private static Properties properties = new Properties();
	

	public static void loadProperties() throws IOException {

		String fileName = "./config/conf.cfg";
		try
		{
			FileInputStream propsFile = new FileInputStream(fileName);
			properties.load(propsFile);
			propsFile.close();

			user = properties.getProperty("user", user);
			pass = properties.getProperty("pass", pass);
			partnerid = properties.getProperty("partnerid", partnerid);
			partnerCode = properties.getProperty("partnerCode", partnerCode);
			transID = getIntProperty("transID", transID);
			url =  properties.getProperty("url", url);
			mpin = properties.getProperty("mpin", mpin);
			publickey = properties.getProperty("publickey", publickey);
			privatekey = properties.getProperty("privatekey", privatekey);
			cardlist = properties.getProperty("cardlist", cardlist);
			padding = properties.getProperty("padding", padding);
			inputdir = properties.getProperty("inputdir", inputdir);
			outputdir = properties.getProperty("outputdir", outputdir);
			
			sys_log_dir_exception = properties.getProperty("sys_log_dir_exception", sys_log_dir_exception);
			log_dir_action = properties.getProperty("log_dir_action", log_dir_action);
			log_dir_exception = properties.getProperty("log_dir_exception", log_dir_exception);
			target = properties.getProperty("target", target);
			
			shotdelaytime = getIntProperty("shotdelaytime", shotdelaytime);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	static int getIntProperty(String propName, int defaultValue) {
		return Integer.parseInt(properties.getProperty(propName, Integer
				.toString(defaultValue)));
	}
	

	static boolean getBoolProperty(String propName, boolean defaultValue) {
		if (properties.getProperty(propName).equalsIgnoreCase("true")) return true;
		else if (properties.getProperty(propName).equalsIgnoreCase("false")) return false;
		else return defaultValue;
	}

	static {
		try {
			loadProperties();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
