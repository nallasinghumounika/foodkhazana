package com.food.service;

import com.food.model.Cart;
import com.food.model.CartItem;

public interface CartItemService {
	
	public abstract void addCartItem(CartItem cartItem);
	public abstract CartItem getCartItem(String cartItemId);
	public abstract void removeCartItem(String cartItemId);
	public abstract void removeAllCartItems(String customer);

}
