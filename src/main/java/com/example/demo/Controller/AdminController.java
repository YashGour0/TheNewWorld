package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.example.demo.Entity.AdminEntity;
import com.example.demo.service.AdminService;

import io.swagger.v3.oas.annotations.parameters.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@Controller  // Changed from @RestController to @Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @PostMapping("/institute_login1")
    public Object processLogin(@RequestParam String username,
    							@RequestParam String password,
                                Model model) {
    	String aa=adminService.validation(username, password);
        // Implement actual validation logic here (e.g., database check)
        if (aa.equals("done")&&aa!=null) {
        	System.out.println("done");
            return "home";  // Redirect to home on success
        }
        else {
        	System.out.println("invalid");
            model.addAttribute("resultMessage", "Invalid username or password.");
            return "institute_login";  // Return to login page on failure
        }
    }

  

    // REST API endpoint to save the admin user
    @PostMapping("/adminUser")
    public AdminEntity adminuser(AdminEntity ae) {
        return adminService.userInput(ae);  // Save admin entity
    }
}
