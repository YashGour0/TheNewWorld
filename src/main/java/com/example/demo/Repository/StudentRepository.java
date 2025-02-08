package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Entity.StudentEntity;

public interface StudentRepository extends JpaRepository<StudentEntity, Long> {
    // JpaRepository द्वारा save(), findById(), आदि जैसे CRUD ऑपरेशन का समर्थन मिलता है
}
