package com.food.service;

import java.util.List;


import com.food.model.Supplier;

public interface SuppliersService {
	public abstract void addSupplier(Supplier sup);
	public abstract List<Supplier> getSuppliers();
	public abstract void deleteSupplier(String supid);
	
	public abstract Supplier getSupplierById(String sid);
	public abstract void editSupplier(Supplier sup);


}
