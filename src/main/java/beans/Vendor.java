package beans;

import java.util.Set;

public class Vendor 
{   private String cust_id;  
	private String emailid;
	private String username;
	private String password;
	private String mobile;
	private String shop_name;
	private String shop_address;
	private String city;
	private String market;
	private String verified;
	private String paytm_no;
	private String pincode;
	private String shop_image;
	private Set<Product> setOfProducts;
	
	
	
	public String getVerified() {
		return verified;
	}
	public void setVerified(String verified) {
		this.verified = verified;
	}
	public String getCust_id() {
		return cust_id;
	}
	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getShop_address() {
		return shop_address;
	}
	public void setShop_address(String shop_address) {
		this.shop_address = shop_address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getMarket() {
		return market;
	}
	public void setMarket(String market) {
		this.market = market;
	}
	public String getPaytm_no() {
		return paytm_no;
	}
	public void setPaytm_no(String paytm_no) {
		this.paytm_no = paytm_no;
	}
	
	public Set<Product> getSetOfProducts() {
		return setOfProducts;
	}
	public void setSetOfProducts(Set<Product> setOfProducts) {
		this.setOfProducts = setOfProducts;
	}
	
	public String getShop_image() {
		return shop_image;
	}
	public void setShop_image(String shop_image) {
		this.shop_image = shop_image;
	}

	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public Vendor(String cust_id,String emailid, String username, String password, String mobile, String shop_name,
			String shop_address,String pincode, String city, String market, String paytm_no,String shop_image) {
		super();
		this.cust_id=cust_id;
		this.emailid = emailid;
		this.username = username;
		this.password = password;
		this.mobile = mobile;
		this.shop_name = shop_name;
		this.shop_address = shop_address;
		this.pincode=pincode;
		this.city = city;
		this.market = market;
		this.paytm_no = paytm_no;
		this.shop_image=shop_image;
		
	}
	Vendor()
	{
		
	}
	
	
}
