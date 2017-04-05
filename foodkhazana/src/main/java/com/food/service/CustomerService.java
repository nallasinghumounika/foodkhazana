package com.food.service;

import com.food.model.Customer;

public interface CustomerService {
	
	
	public abstract String addCustomer(Customer cust);
	public abstract Customer getCustomerByUserId(String userid);

}
