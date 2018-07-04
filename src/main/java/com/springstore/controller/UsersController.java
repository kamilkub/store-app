package com.springstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping
public class UsersController {
 
	
	@RequestMapping("/login")
	public ModelAndView showLoginForm() {
		
		 ModelAndView model_view =  new ModelAndView("login");
		
		return model_view;
		
	}
	
	@GetMapping("/register")
	public String showRegistrationForm() {
		
		return "checkout";
		
	}
	
	 
}
