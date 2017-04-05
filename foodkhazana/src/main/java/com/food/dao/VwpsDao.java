package com.food.dao;

import java.util.List;

import com.food.model.Vw_Xmap_Ps;

public interface VwpsDao {
	
	public abstract List<Vw_Xmap_Ps> getVwPs();
	public abstract List<Vw_Xmap_Ps> getBestVwPs();
	public abstract List<Vw_Xmap_Ps> getreqAllSuppProducts(String pid);
}
