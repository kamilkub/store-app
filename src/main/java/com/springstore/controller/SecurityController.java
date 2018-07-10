package com.springstore.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springstore.dao.UserDAO;
import com.springstore.dto.Address;
import com.springstore.dto.Cart;
import com.springstore.dto.User;
import com.springstore.filevalidation.FileValidator;

@Controller
@RequestMapping
public class SecurityController {

	@Autowired
	private UserDAO userDAO;
	
	private Cart cart;
	
	private Address address;
	
	@Autowired
	private BCryptPasswordEncoder crypt;
	

	private static final org.jboss.logging.Logger logger = LoggerFactory.logger(SecurityController.class);

	@RequestMapping("/auth")
	public ModelAndView signInForm(@RequestParam(name = "error", required = false) String error) {

		ModelAndView model_view = new ModelAndView("signin");

		if (error != null) {
			model_view.addObject("error", "Invalid email or password!");
		}

		return model_view;

	}

	@PostMapping("/adduser")
	public String singUpForm(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
         
		new FileValidator().validate(user, result);

		if (result.hasErrors()) {
			
			return "register";
			
		} else {

			logger.info(user.toString());
				
			cart.setUser(user);
			
			cart.setId(user.getId());
			
			userDAO.addNewUser(user);

		}

		return "redirect://register?operation=user";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder data) {
		
		StringTrimmerEditor trimmer_editor = new StringTrimmerEditor(true);
		
		data.registerCustomEditor(String.class, trimmer_editor);
		
		
	}

	
}
