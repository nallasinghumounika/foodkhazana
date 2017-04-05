package com.food.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.food.model.Product;
import com.food.model.Supplier;
import com.food.service.SuppliersService;





@Controller
public class SupplierController {

	@Autowired
	private SuppliersService suppliersService;
	
	@RequestMapping("/reqSupplierform")
	public String displayAddSupplier(Model m,HttpSession hsession){
		
		m.addAttribute("supplierObject1", new Supplier());
		m.addAttribute("userimage", hsession.getAttribute("userlogin"));
		
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		return "addsupplier";
	}

	@RequestMapping(value={"/addSupplierToDB1"},method = RequestMethod.POST)
	public String addSupplierToDb(@ModelAttribute("supplierObject1")Supplier sup,Model m,HttpSession hsession){	
		m.addAttribute("username", hsession.getAttribute("userlogedin"));	
		System.out.println(sup.getSuppliername());
		
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		suppliersService.addSupplier(sup);		
		return "loginsuccessadmin";  // displays admins home page			
	}
	
	@RequestMapping("/reqDisplaysuppliersAdmin")
	public String displaySuppliersAdmin(Model m,HttpSession hsession){
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		List<Supplier> data = suppliersService.getSuppliers();
		m.addAttribute("suppliers",data);
		m.addAttribute("userimage", hsession.getAttribute("userlogin"));
		return "displaysuppliersadmin";
	}
	@RequestMapping("/reqDeleteSupplier")
	public String deleteSupplier(@RequestParam("sid")String supid){
		//System.out.println(supid);
		suppliersService.deleteSupplier(supid);
		return "redirect:/reqDisplaysuppliersAdmin";
	}
	@RequestMapping("/reqEditSupplierPage")
	public String editSupplier(@RequestParam("sid")String sid,Model model,HttpSession hsession){		
		Supplier temp = suppliersService.getSupplierById(sid);
		model.addAttribute("supplierObj", temp);
model.addAttribute("userimage", hsession.getAttribute("userlogin"));
		
		model.addAttribute("username", hsession.getAttribute("userlogedin"));
	
		return "editsupplierpage";
	}
	
	@RequestMapping("/reqEditSupplierToDb")
	public String editsuppliertodb(@ModelAttribute("supplierObj")Supplier sup,Model m,HttpSession hsession){
		suppliersService.editSupplier(sup);
		
		m.addAttribute("userimage", hsession.getAttribute("userlogin"));
		return "redirect:/reqDisplaysuppliersAdmin";
	}
}

