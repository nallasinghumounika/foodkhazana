package com.food.service;

import java.util.List;

import com.food.model.Product;

public interface ProductService {
	public abstract void addProduct(Product prd);
	public abstract List<Product> getProducts();
	public abstract void deleteProduct(String prdid);
	public abstract Product getProductById(String pid);
	public abstract void editProduct(Product prd);

}
