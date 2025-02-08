package com.example.demo.Repository;

import com.example.demo.Entity.AdminEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface AdminRepository extends JpaRepository<AdminEntity, Integer> {
	
	Optional<AdminEntity> findByUsername(String username);
	Optional<AdminEntity> findByEmail(String emailid);

}
