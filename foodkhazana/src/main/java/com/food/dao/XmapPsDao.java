package com.food.dao;

import java.util.List;

import com.food.model.Product;
import com.food.model.XMAP_Product_Supplier;

public interface XmapPsDao {
	public abstract void addXmapPs(XMAP_Product_Supplier xps);
	public abstract List<XMAP_Product_Supplier> displayXmapPs();
	
	public abstract void deleteXmap_product_Supplier(String xpsid);

	public abstract XMAP_Product_Supplier getXMAP_Product_SupplierById(String psid);
	public abstract void editXMAP_Product_Supplier(XMAP_Product_Supplier xps);


}
