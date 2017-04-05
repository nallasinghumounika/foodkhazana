package com.food.service;

import com.food.model.Cart;

public interface CartService {
	
	public abstract  Cart getCart(String cartid); 
	public abstract int getCartSize(Cart cart);
	public abstract void updateCart(Cart cart);

}
