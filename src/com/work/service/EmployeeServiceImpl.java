package com.work.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.work.dao.EmployeeDAO;
import com.work.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDAO EmployeeDAO;

	@Override
	@Transactional
	public void saveEmployeeObj(Employee employeeObj) {
		EmployeeDAO.saveEmployeeObj(employeeObj);
	}

	@Override
	@Transactional
	public List<Employee> getAllEmployees() {
		return EmployeeDAO.getAllEmployees();
	}

	@Override
	@Transactional
	public Employee getEmployeeObj(int theId) {
		return EmployeeDAO.getEmployeeObj(theId);
	}

	@Override
	@Transactional
	public void removeEmployeeObj(int theId) {
		EmployeeDAO.removeEmployeeObj(theId);
	}

}