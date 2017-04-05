package com.food.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.food.model.Customer;
import com.food.model.Userdetails;
import com.food.service.CustomerService;
import com.food.service.UserdetailsService;

@Controller
public class CustomerorderController {
	@Autowired
	
	private CustomerService customerService;
	
	@Autowired
	private UserdetailsService userdetailsService;
	
	@RequestMapping("/order/{cartId}")
	public String displayCheckOut(@PathVariable String cartId,Model m,HttpSession hsession ){
	
		System.out.println("\nCartid in checkout : " + cartId);
		Userdetails ud = userdetailsService.getUserById(hsession.getAttribute("userlogin").toString());
		Customer c=customerService.getCustomerByUserId(ud.getUserid());
		m.addAttribute("loginusername", hsession.getAttribute("loginusername"));
		m.addAttribute("loginuserid", hsession.getAttribute("loginuserid"));
		
		
		
		return "redirect:/checkout?cartId="+cartId;
	}

}
