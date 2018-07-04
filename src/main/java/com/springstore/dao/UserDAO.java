package com.springstore.dao;

import java.util.List;

import com.springstore.dto.Address;
import com.springstore.dto.Cart;
import com.springstore.dto.User;

public interface UserDAO {
     
	
	  boolean addNewUser(User user);
	  User check_by_email(String email);
	  
	  boolean addNewAddress(Address address);
	  Address check_billing_address(User user);
	  List<Address> list_of_shippingAddresses(User user);
	  
	  
	  boolean updateCartResource(Cart cart);
}
