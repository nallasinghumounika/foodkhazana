package com.food.service;

import java.util.List;

import com.food.model.Userdetails;
import com.food.model.Userdetails1;

public interface UserdetailsService {
	public abstract String addUser(Userdetails ud);
	public abstract Userdetails loginCheck(Userdetails ud);
	public abstract Userdetails getUserById(String uid);
	public abstract Userdetails1 loginCheck1(Userdetails1 ud);
	public abstract Userdetails1 getUserById1(String uid);
	public abstract void editUser(Userdetails1 ud);
	public abstract void enableUser(String uid);
	public abstract void disbleUser(String uid);
	public abstract List<Userdetails1> getAllUsers();
}
