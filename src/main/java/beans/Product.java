package beans;

public class Product
{
	private String p_id;
	private String name;
	private float price;
	private String desc;
	private int quantity;
	private String category;
	private String pics;

	
	
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPics() {
		return pics;
	}
	public void setPics(String pics) {
		this.pics = pics;
	}
    
	public Product(String p_id, String name, float price, String desc, String category, String pics,int quantity) {
		
		this.p_id = p_id;
		this.name = name;
		this.price = price;
		this.desc = desc;
		
		this.category = category;
		this.pics = pics;
        this.quantity=quantity;
	}
	
	Product()
	{
		
	}
	

}
