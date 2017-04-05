package com.food.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Customer implements Serializable {

@Id

	private String customerid;
	private String custname;
	private String custemailid;
	private String custmobileno;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="userid")
	private Userdetails1 userdetails1;	
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="billingaddressid")
	private BillingAddress billingAddress;

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="shippingaddressid")
	private ShippingAddress shippingAddress;

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cartid")
	private Cart cart;

	public String getCustomerid() {
		return customerid;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}

	public String getCustname() {
		return custname;
	}

	public void setCustname(String custname) {
		this.custname = custname;
	}

	public String getCustemailid() {
		return custemailid;
	}

	public void setCustemailid(String custemailid) {
		this.custemailid = custemailid;
	}

	public String getCustmobileno() {
		return custmobileno;
	}

	public void setCustmobileno(String custmobileno) {
		this.custmobileno = custmobileno;
	}

	public Userdetails1 getUserdetails1() {
		return userdetails1;
	}

	public void setUserdetails1(Userdetails1 userdetails1) {
		this.userdetails1 = userdetails1;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	
}


