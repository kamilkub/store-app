package com.springstore.dao;

import java.util.List;

import com.springstore.dto.Product;

public interface ProductDAO {

	boolean addSession(Product product);

	boolean updateSession(Product product);

	boolean deleteSession(Product product);

	List<Product> productsList();

	Product getSession(int id);

	List<Product> activeProducts();

	List<Product> activeProductsCategory(int categoryId);

	List<Product> getLatestActiveProducts(int count);

}
