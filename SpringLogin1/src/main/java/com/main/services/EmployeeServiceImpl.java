package com.main.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.controllers.EmployeeDTO;
import com.main.dao.EmployeeEntity;
import com.main.dao.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeRepository employeeRepository;
	
	@Override
	public void saveEmployee(EmployeeDTO employeeDTO) {

		EmployeeEntity employeeEntity = new EmployeeEntity();//blank obj
		BeanUtils.copyProperties(employeeDTO, employeeEntity);
		employeeRepository.save(employeeEntity);
		
	}

	@Override
	public List<EmployeeDTO> showAll() {

	List<EmployeeEntity> listOfEntity = employeeRepository.findAll();
	
	List<EmployeeDTO> listOfDTO = new ArrayList<>();//blank arraylist
	
	for(EmployeeEntity employeeEntity : listOfEntity) {
		
		EmployeeDTO employeeDTO = new EmployeeDTO();//blank obj
		BeanUtils.copyProperties(employeeEntity, employeeDTO);
		listOfDTO.add(employeeDTO);
		
	}
		return listOfDTO;
	}

	@Override
	public void deleteEmp(int employeeId) {

		employeeRepository.deleteById(employeeId);
	}

	@Override
	public EmployeeDTO fetchRecord(int employeeId) {

		Optional<EmployeeEntity> optional = employeeRepository.findById(employeeId);
		if(optional.isPresent()) {
			
		EmployeeEntity employeeEntity	=optional.get();
		EmployeeDTO employeeDTO = new EmployeeDTO();
		BeanUtils.copyProperties(employeeEntity, employeeDTO);
		
		return employeeDTO;
		}
		
		return null;
	}

	@Override
	public EmployeeDTO authenticate(String emailId, String password) {

	EmployeeEntity employeeEntity = employeeRepository.findByEmailIdAndPassword(emailId,password);
	
	if(employeeEntity!=null) {
		
		EmployeeDTO employeeDTO = new EmployeeDTO();
		BeanUtils.copyProperties(employeeEntity, employeeDTO);
		return employeeDTO;
	}
		return null;
	}

	
	
	

	
}
