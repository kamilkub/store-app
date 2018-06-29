package com.springstore.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springstore.dao.ProductDAO;
import com.springstore.dto.Product;


@Repository("productDAO")
@Transactional
public class ProductImpl implements ProductDAO {
    
	@Autowired
	private SessionFactory session;
	
	
	// ADD PRODUCT TO THE STORE
	@Override
	public boolean addSession(Product product) {
		try {
			session.getCurrentSession().persist(product); 
			return true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}
    
	// UPDATE PRODUCT INFORMATION
	
	@Override
	public boolean updateSession(Product product) {
        
		try {	
			session.getCurrentSession().update(product); 
			return true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
    
	// DELETE PRODUCT
	@Override
	public boolean deleteSession(Product product) {
		
		try {	
			
			product.setActive(false); 
			return this.updateSession(product);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
    
	// LIST OF PRODUCTS
	@Override
	public List<Product> productsList() {
		return session.getCurrentSession().createQuery("FROM Product" , Product.class).getResultList();
	}
    
	// GET SINGLE PRODUCT
	@Override
	public Product getSession(int id) {
		try {
			 return session
					 .getCurrentSession()
					 .get(Product.class, Integer.valueOf(id));
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	  return null;
	}
	
	//////////////////////// BUSSINESS METHODS ///////////////////////////

	@Override
	public List<Product> activeProducts() {
		String active_products = "FROM Product WHERE active = :active";
		return session.getCurrentSession()
				.createQuery(active_products, Product.class)
				.setParameter("active", true).getResultList();
	}

	@Override
	public List<Product> activeProductsCategory(int categoryId) {
		String active_products_category = "FROM Product WHERE active = :active AND categoryId = :categoryId";
		return session.getCurrentSession().createQuery(active_products_category, Product.class)
				.setParameter("active", true)
				.setParameter("categoryId", categoryId)
				.getResultList();
	}

	@Override
	public List<Product> getLatestActiveProducts(int count) {
		return session.getCurrentSession().createQuery("FROM Product WHERE active= :active ORDER BY id", Product.class)
				.setParameter("active", true)
				.setFirstResult(0)
				.setMaxResults(count)
				.getResultList();
	}
	
	
}
