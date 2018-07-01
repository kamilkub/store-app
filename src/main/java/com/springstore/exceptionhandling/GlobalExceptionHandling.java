package com.springstore.exceptionhandling;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalExceptionHandling {

	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoExceptionHandler() {

		ModelAndView model_view = new ModelAndView("exception");

		model_view.addObject("exception_title", "Page not found");

		model_view.addObject("exception", "The page you are looking for does not exist in our service!");

		model_view.addObject("page_title", "Not found 404 Service");

		return model_view;
	}

	@ExceptionHandler(ProductNotFound.class)
	public ModelAndView handlerProductNotFound() {

		ModelAndView model_view = new ModelAndView("exception");

		model_view.addObject("exception_title", "Product not found");

		model_view.addObject("exception", "Product you looking for is not available");

		model_view.addObject("page_title", "Product not available");

		return model_view;
	}

	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException(Exception ex) {

		ModelAndView model_view = new ModelAndView("exception");

		model_view.addObject("exception_title", "Page not found");

		model_view.addObject("exception", "We have not found direction you looking for");

		model_view.addObject("page_title", "Input error");

		return model_view;

	}

}
