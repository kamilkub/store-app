package com.springstore.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.springstore.dao.CategoryDAO;
import com.springstore.dao.ProductDAO;
import com.springstore.dao.UserDAO;
import com.springstore.dto.Address;
import com.springstore.dto.Cart;
import com.springstore.dto.User;

public class UserAddressCartTest {

	private static AnnotationConfigApplicationContext context;

	private Address address = null;

	private Cart cart = null;

	private User user = null;

	private static UserDAO userDAO;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.springstore");
		context.refresh();

		userDAO = (UserDAO) context.getBean("userDAO");

	}
	
	@Test
	public void testCase() {
		
		user = new User();
		user.setFirstName("Mikel");
		user.setLastName("Andrew");
		user.setPassword("2839");
		user.setEmail("mikel@gmail.com");
		user.setContact_number("839756256");
		user.setRole("USER");
		
        user.setId(1);
		assertEquals("User adding error!",true, userDAO.addNewUser(user));
		
	}
		/*
		// CART //
				//////////////////////////////////////////
				if(user.getRole().equals("USER")) {
				
				cart = new Cart();
				cart.setUser(user);
				user.setCart(cart);
				
				assertEquals("Cart adding error!",true, userDAO.updateCartResource(cart));
				
				
				address = new Address();
				address.setAddress_two("101/B Block at Birmingham");
				address.setAdress_one("Near Birmingham Store");
				address.setShipping(true);
				address.setCountry("United States");
				address.setPostalCode("500252");
				address.setState("Massacchusets");
				address.setCity("Birmingham");
				
				address.setUser_id(user.getId());
				assertEquals("Address adding error!",true, userDAO.addNewAddress(address));
				
				}
				
				
		
		
		/// ADDRESS //
		////////////////////////////////////////////////
		address = new Address();
		address.setAddress_two("101/B Block at Birmingham");
		address.setAdress_one("Near Birmingham Store");
		address.setBilling(true);
		address.setCountry("United States");
		address.setPostalCode("500252");
		address.setState("Massacchusets");
		address.setCity("Birmingham");
		
		address.setUser_id(user.getId());
		assertEquals("Address adding error!",true, userDAO.addNewAddress(address));
		
		
	}
	*/
	
	//@Test
	//public void testCase() {
		
		// user = userDAO.check_by_email("mikel_andrew@o2.pl");

		// cart = user.getCart();

		// cart.setTotalPrice(5555);
		// cart.setCartLines(2);

		// assertEquals("Cart update error!",true, userDAO.updateCartResource(cart));

		/*user = new User();
		user.setFirstName("Mikel");
		user.setLastName("Andrew");
		user.setPassword("2839");
		user.setEmail("mikel_andrew@o2.pl");
		user.setContact_number("839756256");
		user.setRole("USER");

		assertEquals("User adding error!", true, userDAO.addNewUser(user));

		address = new Address();
		address.setAddress_two("101/B Block at Birmingham");
		address.setAdress_one("Near Birmingham Store");
		address.setShipping(true);
		address.setCountry("United States");
		address.setPostalCode("500252");
		address.setState("Massacchusets");
		address.setCity("Birmingham");

		address.setUser(user);
		assertEquals("Address adding error!", true, userDAO.addNewAddress(address));

		address = new Address();
		address.setAddress_two("101/B Block at Birmingham");
		address.setAdress_one("Near Birmingham Store");
		address.setBilling(true);
		address.setCountry("United States");
		address.setPostalCode("500252");
		address.setState("Massacchusets");
		address.setCity("Birmingham");

		address.setUser(user);
		assertEquals("Address adding error!", true, userDAO.addNewAddress(address));
		*/
		
		
		
	/*	
	}
	
	@Test
	public void testDataBase() {
		
		user = userDAO.check_by_email("mikel_andrew@o2.pl");
		
		address = new Address();
		address.setAddress_two("101/B Block at Birmingham");
		address.setAdress_one("Near Birmingham Store");
		address.setShipping(true);
		address.setCountry("United States");
		address.setPostalCode("500252");
		address.setState("Massacchusets");
		address.setCity("Birmingham");
		
		address.setUser(user);
		assertEquals("Address adding error!", true, userDAO.addNewAddress(address));
		
	}
	*/
	/*
	@Test
	public void testListOne() {
		
		
		user = userDAO.check_by_email("mikel_andrew@o2.pl");
		
		assertEquals("Problem!",2,userDAO.list_of_shippingAddresses(user).size());
		
		
		assertEquals("Problem!","Birmingham",userDAO.check_billing_address(user));
	}
	*/

}
