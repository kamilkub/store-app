package com.springstore.filevalidation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.springstore.dto.Product;

public class FileValidator implements Validator{

	@Override
	public boolean supports(Class<?> class_vad) {
	
		return Product.class.equals(class_vad);
	}

	@Override
	public void validate(Object object_valid, Errors err) {
	
		Product product = (Product) object_valid;
		
		if(product.getFile() == null ||
				 product.getFile().getOriginalFilename().equals("")) {
			
			err.rejectValue("file", null, "Select an image!");
			return;
		}
		
		if(!product.getFile().getContentType().equals("image/jpeg") || 
				!product.getFile().getContentType().equals("image/png")) {
			
			err.rejectValue("file", null, "Bad format file!");
			return;
		}
			
		
	}

}
