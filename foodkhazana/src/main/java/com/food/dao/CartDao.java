package com.food.dao;

import com.food.model.Cart;

public interface CartDao {
	
	public abstract Cart getCart(String cartid); 
	public abstract int getCartSize(Cart cart);
	public abstract void updateCart(Cart cart);

}
