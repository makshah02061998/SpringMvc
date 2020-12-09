package com.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.work.entity.Employee;
import com.work.service.EmployeeService;

@Controller
@RequestMapping(value = "/employee")
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@RequestMapping("/showFormForAdd")
	public String showAddForm(Model model) {
		model.addAttribute("employee", new Employee());
		return "employee-form";
	}

	@RequestMapping("/saveProcess")
	public String saveEmployeeObj(@ModelAttribute("employee") Employee employeeObj) {
		employeeService.saveEmployeeObj(employeeObj);
		return "redirect:/employee/list";
	}

	@RequestMapping("/list")
	public String listOfEmployees(Model model) {
		model.addAttribute("employeesList", employeeService.getAllEmployees());
		return "list-employees";
	}

	@RequestMapping("/displayUpdateForm")
	public String showUpdateForm(@RequestParam("employeeId") int theId, Model model) {
		model.addAttribute("employee", employeeService.getEmployeeObj(theId));
		return "employee-form";
	}

	@RequestMapping("/displayDeleteForm")
	public String deleteEmployeeObj(@RequestParam("employeeId") int theId, Model model) {
		employeeService.removeEmployeeObj(theId);
		return "redirect:/employee/list";
	}
}