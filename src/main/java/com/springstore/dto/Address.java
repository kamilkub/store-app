package com.springstore.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="address")
public class Address {
      
	 @Id
	  @GeneratedValue(strategy=GenerationType.IDENTITY)
	  @Column(name="id")
	  private int id;
	 
	  @ManyToOne
	  private User user;
	  
	  
	  @Column(name="address_one")
	  private String adress_one;
	  
	  @Column(name="address_two")
	  private String address_two;
	  
	  @Column(name="city")
	  private String city;
	  
	  @Column(name="state")
	  private String state;
	  
	  @Column(name="country")
	  private String country;
	  
	  @Column(name="postal_code")
	  private String postalCode;
	
	  @Column(name="shipping")
	  private boolean shipping;
	  
	  @Column(name="billing")
	  private boolean billing;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdress_one() {
		return adress_one;
	}

	public void setAdress_one(String adress_one) {
		this.adress_one = adress_one;
	}

	public String getAddress_two() {
		return address_two;
	}

	public void setAddress_two(String address_two) {
		this.address_two = address_two;
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

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public boolean isShipping() {
		return shipping;
	}

	public void setShipping(boolean shipping) {
		this.shipping = shipping;
	}

	public boolean isBilling() {
		return billing;
	}

	public void setBilling(boolean billing) {
		this.billing = billing;
	}

	@Override
	public String toString() {
		return "Address [id=" + id + ", user=" + user + ", adress_one=" + adress_one + ", address_two="
				+ address_two + ", city=" + city + ", state=" + state + ", country=" + country + ", postalCode="
				+ postalCode + ", shipping=" + shipping + ", billing=" + billing + "]";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
	  
	  
}
