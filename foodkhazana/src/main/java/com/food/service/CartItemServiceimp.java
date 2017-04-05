package com.food.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.dao.CartItemDao;
import com.food.model.Cart;
import com.food.model.CartItem;

@Service
public class CartItemServiceimp implements CartItemService {

	@Autowired
	private CartItemDao cartitemdao;
	public void addCartItem(CartItem cartItem) {
		cartitemdao.addCartItem(cartItem);

	}

	public CartItem getCartItem(String cartItemId) {
		// TODO Auto-generated method stub
		return cartitemdao.getCartItem(cartItemId);
	}

	public void removeCartItem(String cartItemId) {
		cartitemdao.removeCartItem(cartItemId);
	}

	public void removeAllCartItems(String customerid) {
		cartitemdao.removeAllCartItems(customerid);
	}

	public void removeCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		
	}

	

	

}
