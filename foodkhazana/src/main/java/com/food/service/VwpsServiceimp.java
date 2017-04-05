package com.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.dao.VwpsDao;
import com.food.model.Vw_Xmap_Ps;

@Service

public class VwpsServiceimp implements VwpsService {
	
	@Autowired
private VwpsDao vwpsdao;
	
	public List<Vw_Xmap_Ps> getVwPs() {
		// TODO Auto-generated method stub
		return vwpsdao.getVwPs();
	}

	public List<Vw_Xmap_Ps> getBestVwPs() {
		// TODO Auto-generated method stub
		return vwpsdao.getBestVwPs();
	}
	
	public List<Vw_Xmap_Ps> getreqAllSuppProducts(String pid) {		
		return vwpsdao.getreqAllSuppProducts(pid);
	}



}