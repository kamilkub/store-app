package com.springstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
// Controller which returns all of the JSP's by they request mapping ex. "/home"
import org.springframework.web.servlet.ModelAndView;

import com.springstore.dao.CategoryDAO;
import com.springstore.dao.ProductDAO;
import com.springstore.dto.Category;
import com.springstore.dto.Product;
import com.springstore.dto.User;
import com.springstore.exceptionhandling.ProductNotFound;

@Controller
@RequestMapping
public class StoreController {

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping(value = { "/home", "/", "/index" })
	public ModelAndView showPage() {

		ModelAndView model_view = new ModelAndView("index");

		model_view.addObject("categories", categoryDAO.categoriesList());

		return model_view;
	}

	@RequestMapping(value = "/show/all/products")
	public ModelAndView showProducts() {

		ModelAndView model_view = new ModelAndView("products");

		model_view.addObject("categories", categoryDAO.categoriesList());

		model_view.addObject("userClickAllProducts", true);

		return model_view;
	}

	@RequestMapping(value = "/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable int id) {

		Category category = null;

		category = categoryDAO.getSession(id);

		ModelAndView model_view = new ModelAndView("products");

		model_view.addObject("categories", categoryDAO.categoriesList());

		model_view.addObject("userClickCategoryProducts", true);

		return model_view;
	}

	@RequestMapping(value = "/show/{id}/product")
	public ModelAndView showProduct(@PathVariable int id) throws ProductNotFound {

		ModelAndView model_view = new ModelAndView("product_detail");

		Product product = null;

		Category category = null;

		product = productDAO.getSession(id);

		if (product == null)
			throw new ProductNotFound();

		category = categoryDAO.getSession(id);

		product.setViews(product.getViews() + 1);

		productDAO.updateSession(product);

		model_view.addObject("category", category);

		model_view.addObject("title", product.getName());

		model_view.addObject("product", product);

		model_view.addObject("userClickProduct", true);

		return model_view;
	}
	
	@RequestMapping("/cart")
	public ModelAndView showUsersCart() {
		
		ModelAndView model_view = new ModelAndView("cart");
		
		return model_view;
	}
	
	@RequestMapping(value = "/nonauth")
	public ModelAndView accessDenied() {
		
		ModelAndView model_view = new ModelAndView("exception");

		model_view.addObject("exception_title", "Access Denied");

		model_view.addObject("exception", "You are not authorized to use that!");

		model_view.addObject("page_title", "Access unauthorized");

		return model_view;
		
	}
	

}
