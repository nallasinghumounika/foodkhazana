package com.food.service;

import java.util.List;
import com.food.model.XMAP_Product_Supplier;

public interface XmapPsService {
	public abstract void addXmapPs(XMAP_Product_Supplier xps);
	public abstract List<XMAP_Product_Supplier> displayXmapPs();
	
	public abstract void deleteXmap_product_Supplier(String xpsid);
	public abstract XMAP_Product_Supplier getXMAP_Product_SupplierById(String psid);
	public abstract void editXMAP_Product_Supplier(XMAP_Product_Supplier xps);
	public abstract XMAP_Product_Supplier getXmapPsById(String psid);

}
