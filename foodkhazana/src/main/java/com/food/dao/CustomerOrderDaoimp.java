package com.food.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.model.Cart;
import com.food.model.CartItem;
import com.food.model.CustomerOrder;
import com.food.model.CustomerOrderHistory;
import com.food.model.Product;

@Repository
public class CustomerOrderDaoimp implements CustomerOrderDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCustomerOrder(Cart cart) {
		CustomerOrder customerOrder=new CustomerOrder();
		customerOrder.setOrderId(generateOrderId());
		customerOrder.setCart(cart);
		customerOrder.setCustomer(cart.getCustomer());
		customerOrder.setBillingAddress(cart.getCustomer().getBillingAddress());
		customerOrder.setShippingAddress(cart.getCustomer().getShippingAddress());
		//Insert the data in CustomerOrder table
		Session session=sessionFactory.openSession();
		session.save(customerOrder);
		session.flush();
		session.close();
		//To update grandtotal in Cart table

		List<CartItem> cartItems=cart.getCartItems();
		
		Session soh = sessionFactory.openSession();
		for(CartItem cartItem:cartItems){
			CustomerOrderHistory orderHistory = new CustomerOrderHistory();
			orderHistory.setOrderhistoryid(generateOrderHistoryId());
			orderHistory.setCustomerOrder(customerOrder);
			orderHistory.setPrice(cartItem.getXmap_product_supplier().getProductsupplierprice());
			orderHistory.setProductid(cartItem.getXmap_product_supplier().getProductid());
			orderHistory.setSupplierid(cartItem.getXmap_product_supplier().getSupplierid());
			orderHistory.setQuantity(cartItem.getQuantity());
			orderHistory.setTotal(cartItem.getItemwisetotal());
			orderHistory.setReviewgiven(false);
			soh.save(orderHistory);			
			soh.flush();
		}
		
		soh.close();		
		
		Session soc = sessionFactory.openSession();
		cart.setGrandtotal(0.0);
		soc.update(cart);
		soc.flush();
		soc.close();
	/*	
		double grandTotal=0.0;
		for(CartItem cartItem:cartItems){
			grandTotal=grandTotal + cartItem.getItemwisetotal();
		}
		cart.setGrandtotal(grandTotal);
		//update cart set grandtotal=? where cartid=?
		session.update(cart);
	
		session.flush();
		session.close();
	*/
	
	
	}
	
	
	private String generateOrderId(){
		
		String newOid="";
		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from CustomerOrder");
		List<Product> data = qr.list();
		s.close();
		if(data.size()==0){
			newOid="ORD00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(orderId) from CustomerOrder");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(3));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newOid="ORD0000"+id;
			else if(id<=99)
				newOid="ORD000"+id;
			else if(id<=999)
				newOid="ORD00"+id;
			else if(id<=9999)
				newOid="ORD0"+id;
			else
				newOid="ORD"+id;		
			System.out.print("\nGenerated : "+newOid);		
			ss.close();		
		}
			return newOid;
	}
	
	private String generateOrderHistoryId(){
		
		String newOHid="";
		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from CustomerOrderHistory");
		List<Product> data = qr.list();
		s.close();
		if(data.size()==0){
			newOHid="ORDH00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(orderhistoryid) from CustomerOrderHistory");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(4));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newOHid="ORDH0000"+id;
			else if(id<=99)
				newOHid="ORDH000"+id;
			else if(id<=999)
				newOHid="ORDH00"+id;
			else if(id<=9999)
				newOHid="ORDH0"+id;
			else
				newOHid="ORDH"+id;		
			System.out.print("\nGenerated : "+newOHid);		
			ss.close();		
		}
			return newOHid;
	}
	

}
