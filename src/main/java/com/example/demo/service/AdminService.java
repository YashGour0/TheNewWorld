package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entity.AdminEntity;
import com.example.demo.Repository.AdminRepository;

@Service
public class AdminService {
	
	
	@Autowired
    private AdminRepository ar;
	public String validation(String username , String password) {
		AdminEntity ai = ar.findByUsername(username);
		if (ai == null) {
	        return "invalid"; // Return "invalid" if username is not found
	    }
		if((ai.getPassword()).equals(password)) {
			return "done";
			
		}
		return "invalid";
	}
     
    public AdminEntity userInput(AdminEntity ae) {
    	
    	return ar.save(ae);
    }
}