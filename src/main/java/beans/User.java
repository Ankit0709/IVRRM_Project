package beans;

import java.util.Set;

public class User
{   private String user_id;
	private String email_id;
	private String username;
	private String password;
	private String mobile;
	private Set<Product> setOfProducts;
	
	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getEmail_id() {
		return email_id;
	}


	public void setEmail_id(String email_id) {
		this.email_id = email_id;
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
  

	public Set<Product> getSetOfProducts() {
		return setOfProducts;
	}


	public void setSetOfProducts(Set<Product> setOfProducts) {
		this.setOfProducts = setOfProducts;
	}


	public User( String user,String email_id, String username, String password, String mobile) {
		
		user_id=user;
		this.email_id = email_id;
		this.username = username;
		this.password = password;
		this.mobile = mobile;
	}


	User()
	{
		
	}
	
	
	
	
	

}
