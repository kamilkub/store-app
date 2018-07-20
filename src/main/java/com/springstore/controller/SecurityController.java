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

	private static final org.jboss.logging.Logger logger = LoggerFactory.logger(SecurityController.class);

	@RequestMapping("/auth")
	public ModelAndView signInForm(@RequestParam(name = "error", required = false) String error,
			@RequestParam(name = "logout", required = false) String logout) {

		ModelAndView model_view = new ModelAndView("signin");

		if (error != null) {
			model_view.addObject("error", "Invalid email or password!");
		}
		
		if(logout != null) {
			model_view.addObject("logout", "You successfully logged out!");
		}

		return model_view;

	}
	
	@RequestMapping("/register")
	public ModelAndView showUsersRegistration(@Valid @RequestParam(name="operation", required=false) String operation) {
		
		ModelAndView model_view = new ModelAndView("register");
		
		User user = new User();
		
		model_view.addObject("user", user);
		
		if(operation!=null) {
        	if(operation.equals("user")) {
        		model_view.addObject("success", "You registered successfully! Now you can log in");
        	}
        }
		
		return model_view;
	}
	

	@PostMapping("/register")
	public String singUpForm(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
         
		if (result.hasErrors()) {
			
			return "register";
			
		} else {

			logger.info(user.toString());
			
			cart = new Cart();
			cart.setUser(user);
			cart.setId(user.getId());
			cart.setTotalPrice(0.00);
			cart.setCartLines(0);
			
			userDAO.addNewUser(user);
            userDAO.createCart(cart);
			
		}

		return "redirect://register?operation=user";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder data) {
		
		StringTrimmerEditor trimmer_editor = new StringTrimmerEditor(true);
		
		data.registerCustomEditor(String.class, trimmer_editor);
		
		
	}

	
}
