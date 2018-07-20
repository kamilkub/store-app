package com.springstore.dao;

import java.util.List;

import com.springstore.dto.Cart;
import com.springstore.dto.CartLine;

public interface CartLineDAO {
      
	
	CartLine getCartLine(int id);
	boolean addCartLine(CartLine cart);
	boolean updateCartLine(CartLine cart);
	boolean deleteCartLine(CartLine cart);
	
	public List<CartLine> getListOfProductsInCart(int cartId);
	public List<CartLine> activeProductsCart(int cartId);
	public CartLine getCartProduct(int cartId, int productId);
	
	boolean updateCartResource(Cart cart);
	
	
}
