package com.food.dao;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.model.Customer;
import com.food.model.Userdetails1;

@Repository
public class CustomerDaoimp implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;
	public String addCustomer(Customer cust) {
		Session ses = sessionFactory.openSession();
		cust.setCustomerid(generateCustomerId());
		cust.getUserdetails1().setUserid(generateUserdetails1Id());
		cust.getShippingAddress().setShippingaddressid(generateShippingAddressId());
		cust.getBillingAddress().setBillingaddressid(generateBillingAddressId());
		cust.getCart().setCartid(generateCartId());
		cust.getUserdetails1().setEnabled(true);
		cust.getUserdetails1().setRole("ROLE_USER");
		ses.save(cust);
		ses.flush();
		saveUserImage(cust.getUserdetails1());
		return cust.getCustomerid();
	}

	public Customer getCustomerByUserId(String userid) {
		Session ses = sessionFactory.openSession();
		Query qr = ses.createQuery("from Customer where userid=?");
		qr.setParameter(0, userid);
		Customer cust = (Customer)qr.uniqueResult();
		ses.flush();
		ses.close();
		return cust;
	}

	private String generateCustomerId(){		
		String newCid="";		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from Customer");
		List<Customer> data = qr.list();
		s.close();
		if(data.size()==0){
			newCid="CUST00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(customerid) from Customer");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(4));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newCid="CUST0000"+id;
			else if(id<=99)
				newCid="CUST000"+id;
			else if(id<=999)
				newCid="CUST00"+id;
			else if(id<=9999)
				newCid="CUST0"+id;
			else
				newCid="CUST"+id;		
			System.out.print("\nGenerated : "+newCid);		
			ss.close();		
		}
			return newCid;
	}

	private String generateBillingAddressId(){		
		String newBid="";		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from BillingAddress");
		List<Customer> data = qr.list();
		s.close();
		if(data.size()==0){
			newBid="BLAD00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(billingaddressid) from BillingAddress");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(4));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newBid="BLAD0000"+id;
			else if(id<=99)
				newBid="BLAD000"+id;
			else if(id<=999)
				newBid="BLAD00"+id;
			else if(id<=9999)
				newBid="BLAD0"+id;
			else
				newBid="BLAD"+id;		
			System.out.print("\nGenerated : "+newBid);		
			ss.close();		
		}
			return newBid;
	}
	
	private String generateShippingAddressId(){		
		String newSid="";		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from ShippingAddress");
		List<Customer> data = qr.list();
		s.close();
		if(data.size()==0){
			newSid="SHAD00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(shippingaddressid) from ShippingAddress");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(4));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newSid="SHAD0000"+id;
			else if(id<=99)
				newSid="SHAD000"+id;
			else if(id<=999)
				newSid="SHAD00"+id;
			else if(id<=9999)
				newSid="SHAD0"+id;
			else
				newSid="SHAD"+id;		
			System.out.print("\nGenerated : "+newSid);		
			ss.close();		
		}
			return newSid;
	}	

	private String generateUserdetails1Id(){		
		String newUid="";		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from Userdetails1");
		List<Customer> data = qr.list();
		s.close();
		if(data.size()==0){
			newUid="USR00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(userid) from Userdetails1");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(3));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newUid="USR0000"+id;
			else if(id<=99)
				newUid="USR000"+id;
			else if(id<=999)
				newUid="USR00"+id;
			else if(id<=9999)
				newUid="USR0"+id;
			else
				newUid="USR"+id;		
			System.out.print("\nGenerated : "+newUid);		
			ss.close();		
		}
			return newUid;
	}	

	private String generateCartId(){		
		String newCartid="";		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from Cart");
		List<Customer> data = qr.list();
		s.close();
		if(data.size()==0){
			newCartid="CRT00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(cartid) from Cart");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(3));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newCartid="CRT0000"+id;
			else if(id<=99)
				newCartid="CRT000"+id;
			else if(id<=999)
				newCartid="CRT00"+id;
			else if(id<=9999)
				newCartid="CRT0"+id;
			else
				newCartid="CRT"+id;		
			System.out.print("\nGenerated : "+newCartid);		
			ss.close();		
		}
			return newCartid;
	}
	
	private void saveUserImage(Userdetails1 ud){
		
		System.out.print("\nprd img : " + ud.getImagefile());	
			
		try{				    	
			if (ud.getImagefile() != null ) {				
	           	Path path=Paths.get("C://Workspace-DT//foodkhazana//src//main//webapp//resources//images//users//"+ud.getUserid()+".jpg");	
	           	ud.getImagefile().transferTo(new File(path.toString()));                       	
	            System.out.print("\nUser Image saved");	            
	        }				
		}
		catch(Exception ex){
			System.out.print("\nUser Image not saved...");
		}				
	}
}
