package com.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<EmployeeEntity,Integer>{

	EmployeeEntity findByEmailIdAndPassword(String emailId, String password);

}
