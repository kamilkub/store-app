package com.springstore.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.springstore.dao.CartLineDAO;
import com.springstore.dao.ProductDAO;
import com.springstore.dao.UserDAO;
import com.springstore.dto.Cart;
import com.springstore.dto.CartLine;
import com.springstore.dto.Product;
import com.springstore.dto.User;

public class CartLineTest {
     
	
	private static AnnotationConfigApplicationContext context;
	
	private static UserDAO userDAO;
	
	private static CartLineDAO cartDAO;
	
	private static ProductDAO productDAO;
	
	private User user = null;
	
	private Product product = null;
	
	private Cart cart = null;
	
	private CartLine cartLine = null;
	
	@BeforeClass
	public void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.springstore");
		context.refresh();
		
		cartDAO = (CartLineDAO) context.getBean("cartLineDAO");
		userDAO = (UserDAO) context.getBean("userDAO");
		productDAO = (ProductDAO) context.getBean("productDAO");
		
	}
	
	@Test
	public void cartLineWorkingTest() {
		
		user = userDAO.check_by_email("");
		
		cart = user.getCart();
		
		product = productDAO.getSession(1);
		
		cartLine = new CartLine();
		
		cartLine.setPrice(product.getUnitPrice());
		
		cartLine.setProductCount(cartLine.getProductCount() + 1);
		
		cartLine.setTotal(cartLine.getProductCount() * product.getUnitPrice());
		
		cartLine.setActive(true);
		
		cartLine.setCartId(cart.getId());
		
		cartLine.setProduct(product);
		
		assertEquals("Failed!!",true,cartDAO.addCartLine(cartLine));
		
		cart.setTotalPrice(cart.getTotalPrice() + cartLine.getTotal());
		
		cart.setCartLines(cart.getCartLines() + 1);
		
		assertEquals("Failed!!",true,cartDAO.updateCartResource(cart));
		
		
	}
	
	
}
