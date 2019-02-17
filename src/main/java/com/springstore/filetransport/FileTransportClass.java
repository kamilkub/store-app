package com.springstore.filetransport;

import java.io.File;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class FileTransportClass {
   
	private static final org.jboss.logging.Logger logger_console = LoggerFactory.logger(FileTransportClass.class);
	private static final String direct_path = "";
	private static String server_path = "";
	
	
	public static void transportFile(HttpServletRequest http_req, MultipartFile file, String code) {
		
		server_path = http_req.getSession().getServletContext().getRealPath("/resources/images/");
		
		logger_console.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   "+server_path);
		
		             if(!new File(direct_path).exists()) {
		            	 
		            	new File(direct_path).mkdirs();
		            	 
		             }
		             
		             if(!new File(server_path).exists()) {
		            	 
			            	new File(server_path).mkdirs();
			            	 
			          }
	    
		try {
	    	
	        file.transferTo(new File(server_path+code+".jpg"));  
	        
	        file.transferTo(new File(direct_path+code +".jpg")); 
	        
			
		}catch(Exception ex) {
	    	 ex.printStackTrace(); 	
	    }
	
	}     
	
	
	
}
