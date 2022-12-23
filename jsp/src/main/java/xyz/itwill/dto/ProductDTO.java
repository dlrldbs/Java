package xyz.itwill.dto;

/*
이름           널?       유형            
------------ -------- ------------- 
NUM          NOT NULL NUMBER(4)     
CATEGORY              VARCHAR2(50)  
NAME                  VARCHAR2(100) 
IMAGE_MAIN            VARCHAR2(100) 
IMAGE_DETAIL          VARCHAR2(100) 
QTY                   NUMBER(8)     
PRICE                 NUMBER(8)  
*/

public class ProductDTO {
	private int num;
	private String category;
	private String name;
	private String imageMain;
	private String imageDetail;
	private int qty;
	private int price;

	public ProductDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImageMain() {
		return imageMain;
	}

	public void setImageMain(String imageMain) {
		this.imageMain = imageMain;
	}

	public String getImageDetail() {
		return imageDetail;
	}

	public void setImageDetail(String imageDetail) {
		this.imageDetail = imageDetail;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
}
