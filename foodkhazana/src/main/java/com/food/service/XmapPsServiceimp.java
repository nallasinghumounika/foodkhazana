package com.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.dao.XmapPsDao;
import com.food.model.Product;
import com.food.model.XMAP_Product_Supplier;

@Service

public class XmapPsServiceimp implements XmapPsService {
	@Autowired
	private XmapPsDao xpsdao;
	

	public void addXmapPs(XMAP_Product_Supplier xps) {
		xpsdao.addXmapPs(xps);
	}

	public List<XMAP_Product_Supplier> displayXmapPs() {
		
		return xpsdao.displayXmapPs();
	}
	
	 public void deleteXmap_product_Supplier(String xpsid){
    	 xpsdao.deleteXmap_product_Supplier(xpsid);
     }
/*
	public void deleteprodsup(String psid) {
		XmapPsDao.deleteProdsup(psid);		
	}
	*/
	public XMAP_Product_Supplier getXMAP_Product_SupplierById(String psid) {
		return xpsdao.getXMAP_Product_SupplierById(psid);
	}

	public void editXMAP_Product_Supplier(XMAP_Product_Supplier xps) {
		xpsdao.editXMAP_Product_Supplier(xps);		
	}

	public XMAP_Product_Supplier getXmapPsById(String psid) {
		return xpsdao.getXMAP_Product_SupplierById(psid);
	}
	
	
	
}


