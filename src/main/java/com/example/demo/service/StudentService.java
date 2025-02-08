package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.Entity.StudentEntity;
import com.example.demo.Repository.StudentRepository;

@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;  // Injecting the repository

    // Method to save the student
    public StudentEntity saveStudent(StudentEntity student) {
        return studentRepository.save(student);  // Saving student data into the database
    }
}
