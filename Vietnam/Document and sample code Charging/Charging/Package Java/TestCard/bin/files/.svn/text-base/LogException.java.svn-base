package files;


import utilities.Serilization;

public class LogException {
	/**
	 * 
	 */
	public LogException() {
		super();
		// TODO Auto-generated constructor stub
	}

	int code;
	String message;
	private String partnerID;

	/**
	 * @return the code
	 */
	public int getCode() {
		return code;
	}

	/**
	 * @param code
	 *            the code to set
	 */
	public void setCode(int code) {
		this.code = code;
	}

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message
	 *            the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	public void writeToFile() {
		String xml_log = Serilization.objectToXML(this);
		FileLogger.log(getPartnerID(), xml_log, config.Constant.log_exception);
	}
	
	public static void writeSystemEx(String methodName,Object inputObj)
	{
		String xml_log = Serilization.objectToXML(inputObj);
		FileLogger.log(methodName, xml_log, config.Constant.log_system_exception);
	}

	/**
	 * @param partnerID
	 *            the partnerID to set
	 */
	public void setPartnerID(String partnerID) {
		this.partnerID = partnerID;
	}

	/**
	 * @return the partnerID
	 */
	public String getPartnerID() {
		return partnerID;
	}

}
