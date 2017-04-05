package com.food.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.food.model.Product;
import com.food.model.XMAP_Product_Supplier;

@Repository

public class XmapPsDaoimp implements XmapPsDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void addXmapPs(XMAP_Product_Supplier xps) {
		Session ses = sessionFactory.openSession();
		Transaction tr = ses.beginTransaction();
		xps.setPsid(generatepsid());	
		ses.save(xps);
		tr.commit();
		ses.close();		
	}

	
	
	public List<XMAP_Product_Supplier> displayXmapPs() {
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from XMAP_Product_Supplier");
		List<XMAP_Product_Supplier> data = qr.list();		
		s.close();
		return data;
	}

	public void deleteXmap_product_Supplier(String xpsid){
		Session ses=sessionFactory.openSession();
		Transaction tr=ses.beginTransaction();
		XMAP_Product_Supplier temp=ses.get( XMAP_Product_Supplier.class,xpsid);
		ses.delete(temp);
		tr.commit();
		ses.close();
	}
	
	@Transactional
	public XMAP_Product_Supplier getXMAP_Product_SupplierById(String psid) {
		Session ses = sessionFactory.openSession();
		XMAP_Product_Supplier temp = ses.get(XMAP_Product_Supplier.class, psid);
		ses.close();		
		return temp;
	}
	@Transactional
	public void editXMAP_Product_Supplier(XMAP_Product_Supplier xps) {
		Session ses = sessionFactory.openSession();
		Transaction tr = ses.beginTransaction();
		ses.update(xps);
		tr.commit();
		ses.close();	
	}
	
	@Transactional
	private String generatepsid(){
		
	String newPSid="";
		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from XMAP_Product_Supplier");
		List<XMAP_Product_Supplier> data = qr.list();
		s.close();
		if(data.size()==0){
			newPSid="XPS00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(psid) from XMAP_Product_Supplier");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(3));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newPSid="XPS0000"+id;
			else if(id<=99)
				newPSid="XPS000"+id;
			else if(id<=999)
				newPSid="XPS00"+id;
			else if(id<=9999)
				newPSid="XPS0"+id;
			else
				newPSid="XPS"+id;		
			System.out.print("\nGenerated : "+newPSid);		
			ss.close();		
		}
		return newPSid;
	}
	

}
