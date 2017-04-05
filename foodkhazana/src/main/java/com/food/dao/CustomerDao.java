package com.food.dao;

import com.food.model.Customer;

public interface CustomerDao {
	
	public abstract String addCustomer(Customer cust);
	public abstract Customer getCustomerByUserId(String userid);

}
