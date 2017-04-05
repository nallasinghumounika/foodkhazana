package com.food.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.food.model.Vw_Xmap_Ps;

@Repository

public class VwpsDaoip implements VwpsDao {
	
	@Autowired
private SessionFactory sessionFactory;
	
	public List<Vw_Xmap_Ps> getVwPs() {
		Session ses = sessionFactory.openSession();
		Query qr = ses.createQuery("from Vw_Xmap_Ps");
		List<Vw_Xmap_Ps> data = qr.list();
		ses.close();
		// TODO Auto-generated method stub
		return data;
	}

	public List<Vw_Xmap_Ps> getBestVwPs() {
		Session ses = sessionFactory.openSession();
		String qry = "from Vw_Xmap_Ps x1 where productsupplierprice=(select min(productsupplierprice) from Vw_Xmap_Ps x2 where x1.productid=x2.productid)";
		Query qr = ses.createQuery(qry);
		List<Vw_Xmap_Ps> data = qr.list();
		ses.close();
		// TODO Auto-generated method stub
		return data;
	}
	
	@Transactional
	public List<Vw_Xmap_Ps> getreqAllSuppProducts(String pid) {
		Session ses = sessionFactory.openSession();
		String qry = "from Vw_Xmap_Ps where productid=?";		
		Query qr = ses.createQuery(qry);
		qr.setParameter(0, pid);
		List<Vw_Xmap_Ps> data = qr.list();
		ses.close();		
		return data;
	}
	


}
