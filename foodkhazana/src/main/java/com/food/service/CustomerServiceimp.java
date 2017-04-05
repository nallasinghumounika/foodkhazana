package com.food.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.dao.CustomerDao;
import com.food.model.Customer;

@Service
public class CustomerServiceimp  implements CustomerService {
	
	@Autowired
	private CustomerDao customerDao;
	
	public String addCustomer(Customer cust) {		
		return customerDao.addCustomer(cust);
	}

	public Customer getCustomerByUserId(String userid) {	
		return customerDao.getCustomerByUserId(userid);
	}
}
