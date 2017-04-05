package com.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.food.dao.UserdetailsDao;
import com.food.model.Userdetails;
import com.food.model.Userdetails1;
@Service
public class UserdetailsServiceimp implements UserdetailsService {
	@Autowired
private UserdetailsDao userdetailsdao;
	
	public String addUser(Userdetails ud) {		
		return userdetailsdao.addUser(ud);
	}

	public Userdetails loginCheck(Userdetails ud) {		
		return userdetailsdao.loginCheck(ud);
	}

	public Userdetails getUserById(String uid) {

		return userdetailsdao.getUserById(uid);
	}
/*	public Userdetails1 loginCheck1(Userdetails1 ud) {		
		
		return userdetailsdao.loginCheck1(ud);
	}
*/
	public Userdetails1 getUserById1(String uid) {		
		return userdetailsdao.getUserById1(uid);
	}
	public void editUser(Userdetails1 ud) {
		userdetailsdao.editUser(ud);
		
	}
	
	public List<Userdetails1> getAllUsers() {		
		return userdetailsdao.getAllUsers();
	}
	
	public void enableUser(String uid) {
		userdetailsdao.enableUser(uid);		
	}

	public void disbleUser(String uid) {
		userdetailsdao.disableUser(uid);		
	}

	public Userdetails1 loginCheck1(Userdetails1 ud) {
		// TODO Auto-generated method stub
		return userdetailsdao.loginCheck1(ud);
	}
	
	
	
}
