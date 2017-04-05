package com.food.dao;

import com.food.model.Cart;
import com.food.model.CartItem;

public interface CartItemDao {
  
	public abstract void addCartItem(CartItem cartItem);
	public abstract CartItem  getCartItem(String cartItemId);
	public abstract void removeCartItem(String cartItemId);
	public abstract void removeAllCartItems(String customerid);
}
