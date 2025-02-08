package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@Controller
public class NewController {
	
	
	@RequestMapping("/index1")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/footer")
	public String footer() {
		return "footer";
	}
	

	@RequestMapping("/director")
	public String director() {
		return "director";
	}

	@RequestMapping("/mess")
	public String message() {
		return "message";
	}
	
	
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	@RequestMapping("/home")
	public String login() {
		return "home";
	}
	@RequestMapping("/gallery")
	public String gallery() {
		return "gallery";
	}
	@RequestMapping("/student_login")
	public String login1() {
		return "student_login";
	}
	
	@RequestMapping("/student_reg")
	public String Registration() {
		return "student_reg";
	}
	@RequestMapping("/institute_login")
	    public String home() {
	        return "institute_login"; 
	    }

	
}
