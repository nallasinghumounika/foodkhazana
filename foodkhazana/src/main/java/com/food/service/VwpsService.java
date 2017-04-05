package com.food.service;

import java.util.List;

import com.food.model.Vw_Xmap_Ps;

public interface VwpsService {
	public List<Vw_Xmap_Ps> getVwPs();
public List<Vw_Xmap_Ps> getBestVwPs();
public abstract List<Vw_Xmap_Ps> getreqAllSuppProducts(String pid);


}
