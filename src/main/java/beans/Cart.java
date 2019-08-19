package beans;

import java.util.Set;

public class Cart 
{
	private long id;
	private String p_id;
	private String customer;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public Cart(String p_id, String customer) {
		super();
		this.p_id = p_id;
		this.customer = customer;
	}
	Cart()
	{
		
	}
	
	
	

}
