package com.food.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.food.model.Cart;
import com.food.model.CartItem;
import com.food.model.Customer;
import com.food.model.Vw_Xmap_Ps;
import com.food.model.XMAP_Product_Supplier;
import com.food.service.CartItemService;
import com.food.service.CartService;
import com.food.service.CustomerService;
import com.food.service.VwpsService;
import com.food.service.XmapPsService;

@Controller

public class CartItemController {
	
	
	
	
	@Autowired
	private CartItemService cartItemService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private XmapPsService xmapService;
	@Autowired
	private CartService cartService;	
	@Autowired
	private VwpsService vwpsservice;
	
	@RequestMapping("/reqAddItemToCart/{psid}")
	public String addItemToCart(@PathVariable("psid")String psid, @RequestParam("qty")int qty,Principal principal,HttpSession hsession,Model model){
		System.out.println("psid : "+psid + "  qty : " + qty);
		
		/*Autentication authentication = principal.
		UserDetails1 user= (UserDetails1)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
*/
		String userid=principal.getName();
		System.out.println(userid);
		Customer customer=customerService.getCustomerByUserId(userid);
		Cart cart=customer.getCart();
		XMAP_Product_Supplier xmapProduct = xmapService.getXmapPsById(psid);
		
		CartItem cartitem = new CartItem();			
		cartitem.setCart(cart);
		cartitem.setXmap_product_supplier(xmapProduct); 
		cartitem.setQuantity(qty);
		cartitem.setItemwisetotal(xmapProduct.getProductsupplierprice()*qty);
		
		cartItemService.addCartItem(cartitem);
		
		Customer customer1=customerService.getCustomerByUserId(userid);
		Cart cart1=customer1.getCart();
		int cartsize = cartService.getCartSize(cart1);	
		
		List<CartItem> cartitems = cart.getCartItems();
		int sum=0;
		for(CartItem critem :cartitems)
			sum+= critem.getItemwisetotal();
		
		cart.setGrandtotal(sum);
		cartService.updateCart(cart);
			
		
		List<Vw_Xmap_Ps> psdata = vwpsservice.getBestVwPs();
		
		model.addAttribute("psdata", psdata);
		//model.addAttribute("imagenum", CommonController.generateRandomNum());
		model.addAttribute("loginusername",hsession.getAttribute("loginusername"));
		model.addAttribute("loginuser",hsession.getAttribute("loginuserid"));
		model.addAttribute("cartsize", cartsize);
		model.addAttribute("cartmessage","Item added to cart successfully");
		
		hsession.setAttribute("cartsize", cartsize);
		
		System.out.println("cart size :" + cartsize);
		
		
		//return "displayproductsuser";
		
		return "redirect:/reqDisplayProductsUser";
	}
	
	@RequestMapping("/reqDisplayCart")
	public String displayCart(HttpSession hsession,Model m){
		
		System.out.println("\ndisplay cart");
		Customer cust = customerService.getCustomerByUserId(hsession.getAttribute("userlogin").toString());
		Cart cart = cust.getCart();
		
		int cartsize=cartService.getCartSize(cart);
		hsession.setAttribute("cartsize", cartsize);
		
		List<CartItem> cartitems = cart.getCartItems();
		int sum=0;
		for(CartItem critem:cartitems){
			sum+=critem.getItemwisetotal();
			
		}
		cart.setGrandtotal(sum);
		cartService.updateCart(cart);
		
		m.addAttribute("loginusername", hsession.getAttribute("loginusername"));
		m.addAttribute("loginuserid", hsession.getAttribute("loginuserid"));
		m.addAttribute("cartsize",hsession.getAttribute("cartsize"));
		m.addAttribute("grandtotal",cart.getGrandtotal());
		m.addAttribute("userimage", hsession.getAttribute("userlogin"));
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		m.addAttribute("cartitems", cartitems);
		m.addAttribute("customerid", cust.getCustomerid()); 
		m.addAttribute("customer",cust);
		return "displaycartitems";
	}
	
	@RequestMapping("/reqDeleteCartItem/{cartitemid}")
	public String deleteCartItem(@PathVariable("cartitemid")String cartitemid,Principal principal ){
		cartItemService.removeCartItem(cartitemid);
			
		
		return "redirect:/reqDisplayCart";
	}
@RequestMapping("/reqClearCart/{customerid}")
public String deletAllCartItems(@PathVariable("customerid")String customerid,HttpSession hsession){
	cartItemService.removeAllCartItems(customerid);
	hsession.setAttribute("cartsize", 0);
	return "redirect:/reqDisplayProductsUser";
}
}
