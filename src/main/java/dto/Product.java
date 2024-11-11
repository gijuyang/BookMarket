package dto;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String bookID;	//도서아이디
	private String bookName;	//상품명
	private Integer unitPrice;	//상품 가격
	private int quantity;	//장바구니에 담은 개수

	public Product() {
		super();
	}

	public Product(String bookID, String bookName, Integer unitPrice) {
		this.bookID = bookID;
		this.bookName = bookName;
		this.unitPrice = unitPrice;
	}

	public String getBookID() {
		return bookID;
	}

	public void setBookID(String bookID) {
		this.bookID = bookID;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}