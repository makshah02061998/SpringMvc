package com.work.service;

import java.util.List;

import com.work.entity.Employee;

public interface EmployeeService {
	
	public void saveEmployeeObj(Employee employeeObj);
	 
	public List<Employee> getAllEmployees();
 
	public Employee getEmployeeObj(int theId);
 
	public void removeEmployeeObj(int theId);

}
