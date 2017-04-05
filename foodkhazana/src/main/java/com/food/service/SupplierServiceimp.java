package com.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.dao.SuppliersDao;
import com.food.model.Product;
import com.food.model.Supplier;
@Service

public class SupplierServiceimp implements SuppliersService {
	@Autowired
	private SuppliersDao suppliersDao;

	public void addSupplier(Supplier sup) {
		suppliersDao.addSupplier(sup);


	}


	public List<Supplier> getSuppliers() {
		return suppliersDao.getSuppliers();
	}

	public void deleteSupplier(String supid) {
		suppliersDao.deleteSupplier(supid);		
	}
	
	public Supplier getSupplierById(String sid) {
		return suppliersDao.getSupplierById(sid);
	}

	public void editSupplier(Supplier sup) {
		suppliersDao.editSupplier(sup);		
	}	
}
