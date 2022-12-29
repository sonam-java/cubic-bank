package com.main.services;

import java.util.List;

import com.main.controllers.EmployeeDTO;

public interface EmployeeService {

	void saveEmployee(EmployeeDTO employeeDTO);

	List<EmployeeDTO> showAll();

	void deleteEmp(int employeeId);

	EmployeeDTO fetchRecord(int employeeId);

	EmployeeDTO authenticate(String emailId, String password);

}
