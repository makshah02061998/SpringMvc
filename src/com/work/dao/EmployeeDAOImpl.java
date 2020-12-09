package com.work.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.entity.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void saveEmployeeObj(Employee employeeObj) {
		sessionFactory.getCurrentSession().saveOrUpdate(employeeObj);
	}

	@Override
	public List<Employee> getAllEmployees() {
		Session currentSession = sessionFactory.getCurrentSession();
		List<Employee> theQuery = currentSession.createQuery("from Employee").list();
		return theQuery;
	}

	@Override
	public Employee getEmployeeObj(int theId) {
		Employee employeeObj = (Employee) sessionFactory.getCurrentSession().get(Employee.class, theId);
		return employeeObj;
	}

	@Override
	public void removeEmployeeObj(int theId) {
		Employee employeeObj = (Employee) sessionFactory.getCurrentSession().get(Employee.class, theId);
		sessionFactory.getCurrentSession().delete(employeeObj);
	}

}