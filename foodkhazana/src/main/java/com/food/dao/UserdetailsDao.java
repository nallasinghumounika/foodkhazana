package com.food.dao;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;

import com.food.model.Userdetails;
import com.food.model.Userdetails1;

public interface UserdetailsDao {
	public abstract String addUser(Userdetails ud);

	public abstract Userdetails1 loginCheck1(Userdetails1 ud);
	public abstract Userdetails1 getUserById1(String uid);
	public abstract Userdetails loginCheck(Userdetails ud);
	public abstract Userdetails getUserById(String uid);
	public abstract void editUser(Userdetails1 ud);
	public abstract List<Userdetails1> getAllUsers();
	public abstract void enableUser(String uid);
	public abstract void disableUser(String uid);
}
