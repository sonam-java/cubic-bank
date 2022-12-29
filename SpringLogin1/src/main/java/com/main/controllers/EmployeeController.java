package com.main.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.services.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	
	@GetMapping("register")
	String displayRegistration() {
		
		return "employeeRegistration";
	}
	
	@PostMapping("doRegister")
	String doRegistration(@ModelAttribute EmployeeDTO employeeDTO,Model model) {
		
		employeeService.saveEmployee(employeeDTO);
		model.addAttribute("msg","Successfully data saved...");
		return "employeeRegistration";
	}
	
	@GetMapping("showEmployees")
	String showAllEmp(Model model) {
	
		List<EmployeeDTO> listOfDTO=employeeService.showAll();
		model.addAttribute("listOfDTO",listOfDTO);
		return "showAllEmployees";
	}
	@GetMapping("deleteEmployee")
	String delEmp(@RequestParam int employeeId,Model model) {
		
		employeeService.deleteEmp(employeeId);
		
		return "redirect:showEmployees";
	}
	
	@GetMapping("showEditForm")
	String showEditEmp(@RequestParam int employeeId,Model model) {
		
		EmployeeDTO employeeDTO=employeeService.fetchRecord(employeeId);
		model.addAttribute(employeeDTO);
		
		return "editForm";
	}
	@PostMapping("/update")
	String doUpdate(@ModelAttribute EmployeeDTO employeeDTO) {
		employeeService.saveEmployee(employeeDTO);
		
		return "redirect:showEmployees";
	}
	
	@GetMapping({"/"})
	String doLogin() {
		return "login";
	}
	
	@PostMapping("login")
	String doLoging(@RequestParam String emailId,@RequestParam String password,Model model) {
		
	EmployeeDTO employeeDTO	=employeeService.authenticate(emailId,password);
	if(employeeDTO==null) {
		model.addAttribute("msg","plz try again...");
		
	return "login";
	}
	else {
      model.addAttribute("employeeDTO",employeeDTO);
      
      return "showEmployee";
	}
	
	}
}
