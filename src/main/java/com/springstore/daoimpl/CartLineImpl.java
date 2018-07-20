package com.springstore.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springstore.dao.CartLineDAO;
import com.springstore.dto.Cart;
import com.springstore.dto.CartLine;

@Repository
@Transactional
public class CartLineImpl implements CartLineDAO {
    
	@Autowired
	private SessionFactory session_fact;
	
	
	@Override
	public CartLine getCartLine(int id) {
		
		return session_fact.getCurrentSession().get(CartLine.class, id);
	}

	@Override
	public boolean addCartLine(CartLine cart) {

		try {
			session_fact.getCurrentSession().persist(cart);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateCartLine(CartLine cart) {
		
		try {
			session_fact.getCurrentSession().update(cart);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteCartLine(CartLine cart) {
		
		try {
			session_fact.getCurrentSession().delete(cart);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public List<CartLine> getListOfProductsInCart(int cartId) {
	         String query = "FROM CartLine WHERE cartId = :cartId";
		return session_fact.getCurrentSession().createQuery(query, CartLine.class)
				      .setParameter("cartId", cartId)	  
				      .getResultList();
	}

	@Override
	public List<CartLine> activeProductsCart(int cartId) {
		 String query = "FROM CartLine WHERE cartId = :cartId AND active = :active";
			return session_fact.getCurrentSession().createQuery(query, CartLine.class)
					      .setParameter("cartId", cartId)
					      .setParameter("active", true)
					      .getResultList();
	}

	@Override
	public CartLine getCartProduct(int cartId, int productId) {
		 String query = "FROM CartLine WHERE cartId = :cartId AND product.id = :productId";
		try {	
		 return session_fact.getCurrentSession().createQuery(query, CartLine.class)
					      .setParameter("cartId", cartId)
					      .setParameter("productId", productId)
					      .getSingleResult();
		}catch(Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean updateCartResource(Cart cart) {
		
		try {
			session_fact.getCurrentSession().update(cart);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

}
