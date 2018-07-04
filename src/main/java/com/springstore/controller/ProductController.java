package com.springstore.controller;

import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springstore.dao.CategoryDAO;
import com.springstore.dao.ProductDAO;
import com.springstore.dto.Category;
import com.springstore.dto.Product;
import com.springstore.filetransport.FileTransportClass;
import com.springstore.filevalidation.FileValidator;

@Controller
@RequestMapping("/management")
public class ProductController {
     
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	private static final org.jboss.logging.Logger logger = LoggerFactory.logger(ProductController.class);

	
	@GetMapping("/products")
	public ModelAndView allProducts(@Valid @RequestParam(name="operation", required=false) String operation) {
		
		ModelAndView model_view = new ModelAndView("addproject");
		
		Product product = new Product();
		
		product.setSupplierId(1);
        product.setActive(true);
        
        model_view.addObject("product", product);
        
        if(operation!=null) {
        	if(operation.equals("product")) {
        		model_view.addObject("success", "Product Successfully added!");
        	}
        }
		
		return model_view;
		
	}
	
	@PostMapping("/products")
	public String productAdd (@Valid @ModelAttribute("product") Product product, BindingResult result, Model model ,
			 HttpServletRequest http_req) {
		
		new FileValidator().validate(product,result);
		
		if(result.hasErrors()) {
			
			return "addproject";
		
		
		}else {
		
		logger.info(product.toString());
		
		productDAO.addSession(product);
		
		if(!product.getFile().getOriginalFilename().equals("")) {
			
			FileTransportClass.transportFile(http_req, product.getFile(), product.getCode());
			      
		}
		
		return "redirect://management/products?operation=product";
		
	  }
	}
	
	@ModelAttribute("categories")
	public List<Category> viewCategories(){
		return categoryDAO.categoriesList();
		
	}
	
	@InitBinder
	public void initBinder(WebDataBinder data) {
		
		StringTrimmerEditor trimmer_editor = new StringTrimmerEditor(true);
		
		data.registerCustomEditor(String.class, trimmer_editor);
		
		
	}
	
}
