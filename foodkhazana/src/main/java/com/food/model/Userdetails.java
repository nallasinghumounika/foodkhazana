package com.food.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity

public class Userdetails{
	

		@Id
		private String userid;
		private String password;
		private boolean isenabled;
		private String role;
		@NotEmpty(message="User Name is mandatory")
		private String username;
		private String emailid;
		private String mobileno;
		private Date dateofBirth;
		private String Gender;
		private String address;
		private String city;
		private String state;
		@Transient // only for model, will not effect in DB
		private MultipartFile imagefile;
		public String getUserid() {
			return userid;
		}
		public void setUserid(String userid) {
			this.userid = userid;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public boolean isIsenabled() {
			return isenabled;
		}
		public void setIsenabled(boolean isenabled) {
			this.isenabled = isenabled;
		}
		public String getRole() {
			return role;
		}
		public void setRole(String role) {
			this.role = role;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getEmailid() {
			return emailid;
		}
		public void setEmailid(String emailid) {
			this.emailid = emailid;
		}
		public String getMobileno() {
			return mobileno;
		}
		public void setMobileno(String mobileno) {
			this.mobileno = mobileno;
		}
		
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		public Date getDateofBirth() {
			return dateofBirth;
		}
		public void setDateofBirth(Date dateofBirth) {
			this.dateofBirth = dateofBirth;
		}
		public String getGender() {
			return Gender;
		}
		public void setGender(String gender) {
			Gender = gender;
		}
		public MultipartFile getImagefile() {
			return imagefile;
		}
		public void setImagefile(MultipartFile imagefile) {
			this.imagefile = imagefile;
		}
		
		
		
		
		
		
	}



