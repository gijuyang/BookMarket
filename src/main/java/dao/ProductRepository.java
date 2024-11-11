package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
	public ProductRepository() {
		Product book1 = new Product("P1","가장 젊은 날의 철학",16920);	
		Product book2 = new Product("P2","록펠러의 편지",17100);
		Product book3 = new Product("P3","보이지 않는 노동자들",15300);
		Product book4 = new Product("P4","빛이 이끄는 곳으로",13160);
		Product book5 = new Product("P5","운동하는 사피엔스",18800);
		Product book6 = new Product("P6","자기만의 그라운드",13000);
		Product book7 = new Product("P7","천 번을 흔들리며 아이는 어른이 됩니다",15200);
		Product book8 = new Product("P8","코파일럿이 온다",18500);
		
		
		listOfProducts.add(book1);
		listOfProducts.add(book2);
		listOfProducts.add(book3);	
		listOfProducts.add(book4);	
		listOfProducts.add(book5);	
		listOfProducts.add(book6);	
		listOfProducts.add(book7);	
		listOfProducts.add(book8);	

		}
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	  }

	public final Product getProductById (String bookID) {
		Product productById = null;
		for(int i =0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if( product !=null && product.getBookID() != null && product.getBookID().equals(bookID)) {
				productById = product;
				break;
			}
		}
		return productById;
     }
}
