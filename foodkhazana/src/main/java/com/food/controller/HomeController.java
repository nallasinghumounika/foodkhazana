package com.food.controller;


import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.food.model.BillingAddress;
import com.food.model.Cart;
import com.food.model.Customer;
import com.food.model.ShippingAddress;
import com.food.model.Userdetails;
import com.food.model.Userdetails1;
import com.food.model.Vw_Xmap_Ps;
import com.food.service.CustomerService;
import com.food.service.UserdetailsService;
import com.food.service.VwpsService;



@Controller
public class HomeController {

	@Autowired
	private UserdetailsService userdetailsservice;
	
	@Autowired
	private VwpsService vwpsservice;
	
	@Autowired
	private CustomerService customerService;
	
	
	
	@RequestMapping("/")
	public String displayHomePage(Model m){ 
		List<Vw_Xmap_Ps> psdata = vwpsservice.getBestVwPs();
		
		Customer cust = new Customer();			
		ShippingAddress shippingAddress = new ShippingAddress();		
		Userdetails1 userdetails1 = new Userdetails1();
		
		cust.setUserdetails1(userdetails1);
		cust.setShippingAddress(shippingAddress);		
		
		m.addAttribute("customerObject", cust);
		m.addAttribute("psdata", psdata);
		return "index";
	}
	
	@RequestMapping("/home")
	public String displayHomePage1(Model m){ 
		List<Vw_Xmap_Ps> psdata = vwpsservice.getBestVwPs();
		

		Customer cust = new Customer();			
		ShippingAddress shippingAddress = new ShippingAddress();		
		Userdetails1 userdetails1 = new Userdetails1();
		
		cust.setUserdetails1(userdetails1);
		cust.setShippingAddress(shippingAddress);		
		
		m.addAttribute("customerObject", cust);
		m.addAttribute("psdata", psdata);
		return "index";
	}
	
	/*@RequestMapping("/reqspringloginpage") // to display loginpage
	public String displayLoginpage(Model m){
		m.addAttribute("userObject", new Userdetails());
		return "springloginpage";
	}
	*/
	@RequestMapping("/reqForSignupPage") // to display signuppage
	public String displaySignuppage(Model m){
		m.addAttribute("customerObject", new Customer());
		return "signuppage";
	}
	
	@RequestMapping("/retSendSignupData")
	public String addUser(@ModelAttribute("userObject")Userdetails ud, Model m){
		
		String uid = userdetailsservice.addUser(ud);
		m.addAttribute("message", "Signup is successfull. New userid : " + uid);
		m.addAttribute("userObject", new Userdetails());
		m.addAttribute("userObject1",  new Userdetails1());
		return "springloginpage";
	}
	
	@RequestMapping("/reqspringloginpage")
	public String displaySpringLoginPage(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false) String logout,
			Model m, HttpSession hses){
		if(error!=null)
			m.addAttribute("error","Invalid UserId or Password..........");
		if(logout!=null){
			m.addAttribute("logout", "Logged Out Successfully");
		hses.setAttribute("userlogedin", null);
		hses.setAttribute("userlogin", null);
		return "redirect:/home";
		}
		return "springloginpage";
	}
	
	@RequestMapping("/reqloginCheck1") //to check which user loged in
	public String logincheck(Principal principal,HttpSession hsession,Model m){
		System.out.print("\n Home Controller-loginCheck()");
		System.out.print("\nName:"+principal.getName());
		Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
		String userrole=authentication.getAuthorities().toString().substring(1,10);
		System.out.print("\nRole:"+userrole);
		
		Userdetails1 ud = userdetailsservice.getUserById1(principal.getName());
		Customer cust = customerService.getCustomerByUserId(ud.getUserid());
		
		//Userdetails ud=userdetailsservice.getUserById(principal.getName());
		/*m.addAttribute("userlogedin",cust.getCustname());
		m.addAttribute("userlogin", ud.getUserid());
		m.addAttribute("userimage",ud.getUserid());
		m.addAttribute("cartsize",cust.getCart().getCartItems().size());
		hsession.setAttribute("userlogin", ud.getUserid());
		hsession.setAttribute("userlogedin",cust.getCustname());
		hsession.setAttribute("cartsize", cust.getCart().getCartItems().size());
		*/
		
		if(userrole.equals("ROLE_USER")){
			hsession.setAttribute("userlogin", ud.getUserid());
			hsession.setAttribute("userlogedin",cust.getCustname());
			m.addAttribute("userid", hsession.getAttribute("userlogedin"));
			
			m.addAttribute("userimage",hsession.getAttribute("userlogin"));
			m.addAttribute("cartsize",cust.getCart().getCartItems().size());
			
			
			hsession.setAttribute("cartsize", cust.getCart().getCartItems().size());
			
			return "loginsuccessuser";
			
		}
			else if(userrole.equals("ROLE_ADMI")){
				hsession.setAttribute("userlogin", ud.getUserid());
				hsession.setAttribute("userlogedin",ud.getUserid());
				
				m.addAttribute("userid", hsession.getAttribute("userlogin"));
				
				m.addAttribute("userimage",hsession.getAttribute("userid"));
				return "loginsuccessadmin";
	}
			else 
				return "springloginpage";
	}
	
	@RequestMapping("/reqLoginCheck")
	public String authenticate(@ModelAttribute("userObject")Userdetails ud,Model m,HttpSession hsession){
		
		Userdetails result = userdetailsservice.loginCheck(ud);
		if(result==null){
			m.addAttribute("message", "Login Failed...Retry");
			m.addAttribute("userObject1", new Userdetails());
			return "springloginpage";
		}
		else { // login success
			Customer cust = customerService.getCustomerByUserId(result.getUserid().toString());
			if(result.getRole().equals("ROLE_ADMIN")){
				hsession.setAttribute("userlogin", result.getUserid());
				m.addAttribute("userimage", result.getUserid());
				hsession.setAttribute("userlogedin",cust.getCustname());
				m.addAttribute("username", cust.getCustname());
				m.addAttribute("user", ud);
				return "loginsuccessadmin";
			}
			
			else
				hsession.setAttribute("userlogin", result.getUserid());
			m.addAttribute("userimage", result.getUserid());
			hsession.setAttribute("userlogedin",result.getUsername());
			m.addAttribute("username", result.getUsername());
				m.addAttribute("user", ud);
				return "loginsuccessuser";
		}
		
	}
	@RequestMapping("/reqLogout")
	public String logout(HttpSession hsession){
		hsession.setAttribute("userlogedin", null);
		return "redirect:/springloginpage";
	}


	@RequestMapping("/reqSendSignupDataToDB")
	public String addUserToDb(@ModelAttribute("customerObject")Customer customer, Model m){
		
		BillingAddress ba = new BillingAddress();
		ba.setHouseno(customer.getShippingAddress().getHouseno());
		ba.setStreet(customer.getShippingAddress().getStreet());
		ba.setArea(customer.getShippingAddress().getArea());
		ba.setCity(customer.getShippingAddress().getCity());
		ba.setState(customer.getShippingAddress().getState());
		ba.setCountry(customer.getShippingAddress().getCountry());
		ba.setPincode(customer.getShippingAddress().getPincode());
		customer.setBillingAddress(ba);
		customer.setCart(new Cart());
		String custid = customerService.addCustomer(customer);
		
		/*String cid = userdetailsservice.addUser(ud);*/
		m.addAttribute("message", "1");
		m.addAttribute("message1", "Signup is successfull. Your login id : " + custid);
		Userdetails temp=new Userdetails();
		m.addAttribute("userObject1",  temp);
		m.addAttribute("userObject",  new Userdetails());
		Customer cust = new Customer();			
		ShippingAddress shippingAddress = new ShippingAddress();		
		Userdetails1 ud1 = new Userdetails1();
		
		cust.setUserdetails1(ud1);
		cust.setShippingAddress(shippingAddress);		
		
		m.addAttribute("customerObject", cust);	
		
		//m.addAttribute("imagenum", CommonController.generateRandomNum());
		
		return "springloginpage";
	}


	@RequestMapping("/reqDisplayUsers")
	public String displayUsers(Model m){		
		List<Userdetails1> userdata = userdetailsservice.getAllUsers();
		m.addAttribute("userdata", userdata);
		//m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "displayusers";
	}

	@RequestMapping("reqDisableUser")
	public String disableUser(@RequestParam("uid")String uid){
		userdetailsservice.disbleUser(uid);
		return "redirect:/reqDisplayUsers";
	}
	
	@RequestMapping("reqEnableUser")
	public String enableUser(@RequestParam("uid")String uid){
		userdetailsservice.enableUser(uid);
		return "redirect:/reqDisplayUsers";
	}

}

