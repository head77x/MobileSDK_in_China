package interfaces;

public class ServicesProxy implements interfaces.Services {
  private String _endpoint = null;
  private interfaces.Services services = null;
  
  public ServicesProxy() {
    _initServicesProxy();
  }
  
  public ServicesProxy(String endpoint) {
    _endpoint = endpoint;
    _initServicesProxy();
  }
  
  private void _initServicesProxy() {
    try {
      services = (new interfaces.ServicesServiceLocator()).getServices();
      if (services != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)services)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)services)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (services != null)
      ((javax.xml.rpc.Stub)services)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public interfaces.Services getServices() {
    if (services == null)
      _initServicesProxy();
    return services;
  }
  
  public entities.ChangeResponse changePassword(java.lang.String transid, java.lang.String username, java.lang.String partnerID, java.lang.String old_password, java.lang.String new_password, java.lang.String md5Sessionid) throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    return services.changePassword(transid, username, partnerID, old_password, new_password, md5Sessionid);
  }
  
  public entities.LogoutResponse logout(java.lang.String username, java.lang.String partnerID, java.lang.String md5SessionID) throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    return services.logout(username, partnerID, md5SessionID);
  }
  
  public entities.LoginResponse login(java.lang.String username, java.lang.String password, java.lang.String partnerID) throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    return services.login(username, password, partnerID);
  }
  
  public entities.ChangeResponse changeMPIN(java.lang.String transid, java.lang.String username, java.lang.String partnerID, java.lang.String old_mpin, java.lang.String new_mpin, java.lang.String md5Sessionid) throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    return services.changeMPIN(transid, username, partnerID, old_mpin, new_mpin, md5Sessionid);
  }
  
  public entities.ChargeReponse cardCharging(java.lang.String transid, java.lang.String username, java.lang.String partnerID, java.lang.String mpin, java.lang.String target, java.lang.String card_data, java.lang.String md5Sessionid) throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    return services.cardCharging(transid, username, partnerID, mpin, target, card_data, md5Sessionid);
  }
  
  public entities.ChargeReponse getTransactionStatus(java.lang.String transid, java.lang.String username, java.lang.String partnerID, java.lang.String md5Sessionid) throws java.rmi.RemoteException{
    if (services == null)
      _initServicesProxy();
    return services.getTransactionStatus(transid, username, partnerID, md5Sessionid);
  }
  
  
}