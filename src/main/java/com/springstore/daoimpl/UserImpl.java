package com.springstore.daoimpl;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springstore.dao.UserDAO;
import com.springstore.dto.Address;
import com.springstore.dto.Cart;
import com.springstore.dto.User;

@Repository("userDAO")
@Transactional
public class UserImpl implements UserDAO {

	
	@Autowired
	private SessionFactory session_factory;
	
	@Override
	public boolean addNewUser(User user) {
		
		try {
			
			session_factory.getCurrentSession().update(user);
			return true;
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addNewAddress(Address address) {
        
		try {
			session_factory.getCurrentSession().persist(address);
			return true;
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateCartResource(Cart cart) {
        
		try {
			session_factory.getCurrentSession().update(cart);
			return true;
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public User check_by_email(String email) {
		
		String query_quest = "FROM User WHERE email = :email";

		try {
			return session_factory.getCurrentSession().createQuery(query_quest, User.class)
	                  .setParameter("email", email)
	                  .getSingleResult();
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

	@Override
	public Address check_billing_address(User user) {
		
		String query_ex = "FROM Address WHERE user = :user AND billing = :billing";
		
		try {
			
			  return session_factory.getCurrentSession().createQuery(query_ex, Address.class)
					                 .setParameter("user", user)
					                 .setParameter("billing", true)
					                 .getSingleResult();
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}

	@Override
	public List<Address> list_of_shippingAddresses(User user) {
String query_ex = "FROM Address WHERE user = :user AND shipping = :shipping";
		
		try {
			
			  return session_factory.getCurrentSession().createQuery(query_ex, Address.class)
					                 .setParameter("user", user)
					                 .setParameter("shipping", true)
					                 .getResultList();
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
