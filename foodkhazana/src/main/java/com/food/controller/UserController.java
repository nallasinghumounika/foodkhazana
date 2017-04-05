package com.food.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.food.model.Customer;
import com.food.model.Userdetails;
import com.food.model.Userdetails1;
import com.food.model.Vw_Xmap_Ps;
import com.food.service.CustomerService;
import com.food.service.UserdetailsService;
import com.food.service.VwpsService;

@Controller

public class UserController {
	
	
	@Autowired
	private VwpsService vwpsservice;
	@Autowired
	private UserdetailsService userdetailsService;
	
	@Autowired
	private CustomerService customerService;
	
	
	
	@RequestMapping("/reqDisplayProductsUser")
	public String displayProductsUser(Model m,HttpSession hsession){
		//List<Vw_Xmap_Ps> psdata = vwpsservice.getVwPs(); 
		List<Vw_Xmap_Ps> psdata = vwpsservice.getBestVwPs(); 
		m.addAttribute("userimage", hsession.getAttribute("userlogin"));
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		m.addAttribute("psdata", psdata);
		return "displayproductsuser";
	}
	//@RequestMapping("/reqAddItemToCart/{psid}")
	//public String addProductToCart(@PathVariable String psid, @RequestParam("qty")Integer qty){
		//System.out.print("\nProduct : " + psid + ", qty : " + qty);
		//return null;		
	//}

	@RequestMapping("/reqAllSuppProducts")
	public String displayAllSuppliers(@RequestParam("pid")String pid,Model m,HttpSession hsession){		
		List<Vw_Xmap_Ps> data = vwpsservice.getreqAllSuppProducts(pid);
		m.addAttribute("prdid",data.get(0).getProductid());
		m.addAttribute("productsname",data.get(0).getProductname());
		m.addAttribute("userimage", hsession.getAttribute("userlogin"));
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		m.addAttribute("suppliers", data);
		return "allsuppliers";
	}
	@RequestMapping("/reqEditProfilePage")
	public String displayEditUserPage(/*@RequestParam("uid")String usrd,*/HttpSession hsession,Model m){
		//Userdetails ud = userdetails1Service.getUserById(usrd);
		Userdetails ud = userdetailsService.getUserById(hsession.getAttribute("userlogin").toString());
		Customer c=customerService.getCustomerByUserId(ud.getUserid());
		m.addAttribute("loginusername", hsession.getAttribute("loginusername"));
		m.addAttribute("loginuserid", hsession.getAttribute("loginuserid"));
		m.addAttribute("userObject", ud);
		
		return "editprofilepage";
	}
	
	/*@RequestMapping("/reqEditPrfileToDb")
	public String editProfileToDb(@ModelAttribute("userObject")Customer ud, HttpSession hsession){		
		userdetailsService.get
		Customer cust= customerService.getCustomerByUserId(ud.getUserid());
		hsession.setAttribute("loginusername", cust.getCustname());
		return "redirect:/reqDisplayProductsUser";
	}*/
}
