package com.springstore.exceptionhandling;

import java.io.Serializable;

public class ProductNotFound extends Exception implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String error_message;

	public ProductNotFound() {
		this("Product not available!");
	}

	public ProductNotFound(String error_message) {
		this.error_message = System.currentTimeMillis() + ": " + error_message;
	}

	public String getErrorMessage() {
		return error_message;
	}

}
