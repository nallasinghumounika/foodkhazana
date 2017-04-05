package com.food.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.dao.CartDao;
import com.food.model.Cart;

@Service
public class CartServiceimp implements CartService {
	@Autowired
	private CartDao cartDao;
	public Cart getCart(String cartid) {
		
		return cartDao.getCart(cartid);
	}

	public int getCartSize(Cart cart) {
		
		return cartDao.getCartSize(cart);
	}

	public void updateCart(Cart cart) {

		cartDao.updateCart(cart);
	}

}
