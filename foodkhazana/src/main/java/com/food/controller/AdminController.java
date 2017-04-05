package com.food.controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.food.model.Product;
import com.food.model.Supplier;
import com.food.model.XMAP_Product_Supplier;
import com.food.service.ProductService;
import com.food.service.SuppliersService;
import com.food.service.XmapPsService;




@Controller
public class AdminController {

	@Autowired
	private ProductService productService;
	

	@Autowired
	private XmapPsService xpsservice;
	

	@Autowired
	private SuppliersService suppliersService;

	
	/*@RequestMapping("/reqaddProductdetails")
	public String addProductdetails(Model m){
		
		
		m.addAttribute("productObject1", new Product());
		return "addproductdetails";
	}
	
	@RequestMapping("/sendProductData")
	public String addProducttoDb(@Valid @ModelAttribute("productObject1")Product prd,Model m,BindingResult result){
		System.out.println(prd.getProductname());
		if(result.hasErrors())
			return "addproductdetails";
		return "loginsuccessadmin";
	}
	*/
	@RequestMapping("/reqProductdetails")
	public String displayAddProductdetails(Model m,HttpSession hsession){
		m.addAttribute("productObject1",new Product());
		m.addAttribute("userimage", hsession.getAttribute("userlogin"));
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		return "addproductdetails";
	}

	@RequestMapping(value={"/addProductToDB1"},method=RequestMethod.POST)
	public String addProductToDb(@Valid @ModelAttribute("productObject1")Product prd,Model m,HttpSession hsession,BindingResult result){	
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		
		System.out.println(prd.getProductname());
		
		if(result.hasErrors())
			return "addproductdetails";
		productService.addProduct(prd);	
		return "loginsuccessadmin";  // displays admins home page			
	}
	
	@RequestMapping("/reqDisplayprodcutsAdmin")
	public String displayProductsAdmin(Model m,HttpSession hsession){
		List<Product> data = productService.getProducts();
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		m.addAttribute("userimage", hsession.getAttribute("userlogin"));
		m.addAttribute("products",data);
		
		return "dispalyproductsadmin";
	}
	
	
	@RequestMapping("/reqDeleteProduct")
	public String deleteProduct(@RequestParam("pid")String prdid){
		//System.out.println(prdid);
		productService.deleteProduct(prdid);
		return "redirect:/reqDisplayprodcutsAdmin";
	}
	
	
	@RequestMapping("/reqAddProSupForm")
	public String displayAddProdsup(Model m,HttpSession hsession){
		List<Product> prdata = productService.getProducts();
		List<Supplier> supdata = suppliersService.getSuppliers();
		m.addAttribute("products", prdata);
		m.addAttribute("suppliers", supdata);
		m.addAttribute("prodsupObject", new XMAP_Product_Supplier());
		m.addAttribute("userimage", hsession.getAttribute("userlogin"));
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		return "addprosup";
	}
	
	@RequestMapping("/reqAddProdSupDataToDb")
	public String addprodsupToDb(@ModelAttribute("ProdSupObject1")XMAP_Product_Supplier xps,Model m,HttpSession hsession){	
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		//System.out.println(xps.getProductid());
		xpsservice.addXmapPs(xps);
		return "redirect:/reqDisplayXps";
	}
	
	@RequestMapping("/reqDisplayXps")
	public String displayXps(Model m,HttpSession hsession){
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		List<XMAP_Product_Supplier> xpsdata =  xpsservice.displayXmapPs();
		m.addAttribute("xpsdata", xpsdata);
		m.addAttribute("userimage", hsession.getAttribute("userlogin"));
		return "displayXps";
	}
	
	@RequestMapping("/reqEditProductPage")
	public String editProduct(@RequestParam("pid")String pid,Model model,HttpSession hsession){		
		Product temp = productService.getProductById(pid);
		model.addAttribute("productObj", temp);
		model.addAttribute("userimage", hsession.getAttribute("userlogin"));
		model.addAttribute("username", hsession.getAttribute("userlogedin"));
		return "editProductpage";
	}
	
	@RequestMapping("/reqEditProductToDb")
	public String editproducttodb(@ModelAttribute("productObj")Product prd,Model m,HttpSession hsession){
		productService.editProduct(prd);
		return "redirect:/reqDisplayprodcutsAdmin";
	}
	
	@RequestMapping("/reqEditXmapPage")
	public String editXMAP_Product_Supplier(@RequestParam("psid")String psid,Model model,HttpSession hsession){		
		XMAP_Product_Supplier temp = xpsservice.getXMAP_Product_SupplierById(psid);
		model.addAttribute("prodsupObj", temp);
		model.addAttribute("userimage", hsession.getAttribute("userlogin"));
		model.addAttribute("username", hsession.getAttribute("userlogedin"));
		return "editxmappage";
	}
	
	@RequestMapping("/reqEditprodsupToDb")
	public String editXMAP_Product_Suppliertodb(@ModelAttribute("prodsupObj")XMAP_Product_Supplier xps,Model m,HttpSession hsession){
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		xpsservice.editXMAP_Product_Supplier(xps);
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		return "redirect:/reqDisplayXps";
	}

	@RequestMapping("/reqDeleteXmap_product_Supplier")
	public String deleteXmap_product_Supplier(@RequestParam("psid")String xpsid){
		xpsservice.deleteXmap_product_Supplier(xpsid);
		return "redirect:/reqDisplayXps";
	}
}



