package com.example.demo.Controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Entity.StudentEntity;
import com.example.demo.service.StudentService;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

   

    @PostMapping("/student_reg")
    public StudentEntity registerStudent(@RequestParam("name") String name,
                                         @RequestParam("email") String email,
                                         @RequestParam("phone") String phone,
                                         @RequestParam("dob") String dob,
                                         @RequestParam("course") String course)
                                         {
        try {
         

            // Set the student data
            StudentEntity student = new StudentEntity();
            student.setName(name);
            student.setEmail(email);
            student.setPhone(phone);
            student.setDob(LocalDate.parse(dob));
            student.setCourse(course);
          

            // Save the student entity and return the saved entity
            return studentService.saveStudent(student);

        } catch (Exception e) {
            throw new RuntimeException("Error saving student", e);
        }
    }
}
