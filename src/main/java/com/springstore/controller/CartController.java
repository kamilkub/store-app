package com.springstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cart")
public class CartController {
         
	
	@RequestMapping("/show")
	public ModelAndView showCartPage() {
		
		ModelAndView model_view = new ModelAndView("cart");
	    
	    model_view.addObject("CartLine", null);
		
		return model_view;
		
	}
	
	
	
	
	
	
}
