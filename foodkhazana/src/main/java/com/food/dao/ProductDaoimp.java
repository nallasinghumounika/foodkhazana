package com.food.dao;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.food.model.Product;
import com.food.model.Supplier;




@Repository
public class ProductDaoimp implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void addProduct(Product prd) {
		Session ses = sessionFactory.openSession();
		Transaction tr = ses.beginTransaction();
		prd.setProductid(generateProductId());
		ses.save(prd);
		saveProductImage(prd);
		tr.commit();
		ses.close();
	}
	
	@Transactional
	public List<Product> getProducts() {
		Session ses = sessionFactory.openSession();
		Query qr = ses.createQuery("from Product");
		List<Product> data = qr.list();
		ses.close();
		return data;
	}
	
	public void deleteProduct(String prdid) {
		// TODO Auto-generated method stub
		Session ses = sessionFactory.openSession();
		Transaction tr = ses.beginTransaction();
		Product temp = ses.get(Product.class,prdid);
		ses.delete(temp);
		tr.commit();
		ses.close();		
	
	}
	
	@Transactional
	public Product getProductById(String pid) {
		Session ses = sessionFactory.openSession();
		Product temp = ses.get(Product.class, pid);
		ses.close();		
		return temp;
	}
	@Transactional
	public void editProduct(Product prd) {
		Session ses = sessionFactory.openSession();
		Transaction tr = ses.beginTransaction();
		ses.update(prd);
		tr.commit();
		ses.close();	
	}
	private void saveProductImage(Product prd){
		
		System.out.print("\nprd img : " + prd.getImagefile());	
			
		try{				    	
			if (prd.getImagefile() != null ) {				
	           	Path path=Paths.get("C://Workspace-DT//foodkhazana//src//main//webapp//resources//images//products//"+prd.getProductid()+".jpg");	
	           	prd.getImagefile().transferTo(new File(path.toString()));                       	
	            System.out.print("\nProduct Image saved");	            
	        }				
		}
		
		catch(Exception ex){
			System.out.print("\nProduct Image not saved...");
		}				
	}
	

     @Transactional
	private String generateProductId(){
		
		String newPid="";
		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from Product");
		List<Product> data = qr.list();
		s.close();
		if(data.size()==0){
			newPid="PRD00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(productid) from Product");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(3));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newPid="PRD0000"+id;
			else if(id<=99)
				newPid="PRD000"+id;
			else if(id<=999)
				newPid="PRD00"+id;
			else if(id<=9999)
				newPid="PRD0"+id;
			else
				newPid="PRD"+id;		
			System.out.print("\nGenerated : "+newPid);		
			ss.close();		
		}
			return newPid;
	}
	

}

