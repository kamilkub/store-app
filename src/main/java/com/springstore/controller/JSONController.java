package com.springstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.springstore.dao.ProductDAO;
import com.springstore.dto.Product;

@RestController
@RequestMapping("/json")
public class JSONController {
     
	@Autowired
	private ProductDAO productDAO;
	
	
	@RequestMapping("/all")
	@ResponseBody
	public List<Product> getAllProducts() {
	  
		return productDAO.activeProducts();
		
	}
	
	@RequestMapping("/category/{id}/products")
	@ResponseBody
	public List<Product> getAllProductsByCategory(@PathVariable int id) {
	  
		return productDAO.activeProductsCategory(id);
		
	}
	
	
	
	
	
}
