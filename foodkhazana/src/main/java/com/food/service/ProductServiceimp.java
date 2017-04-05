package com.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.dao.ProductDao;
import com.food.model.Product;


@Service
public class ProductServiceimp implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	public void addProduct(Product prd) {
		productDao.addProduct(prd);
	}

	public List<Product> getProducts() {
		return productDao.getProducts();
	}

	public void deleteProduct(String prdid) {
		productDao.deleteProduct(prdid);		
	}
	
	public Product getProductById(String pid) {
		return productDao.getProductById(pid);
	}

	public void editProduct(Product prd) {
		productDao.editProduct(prd);		
	}
}



