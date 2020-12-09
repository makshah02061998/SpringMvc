package com.work.dao;
 
import java.util.List;
 
import com.work.entity.Employee;
 
public interface EmployeeDAO {
	
	public void saveEmployeeObj(Employee employeeObj);
	 
	public List<Employee> getAllEmployees();
	 
	public Employee getEmployeeObj(int theId);
	 
	public void removeEmployeeObj(int theId);
}