package com.session.spring.dao;

import java.util.List;
import com.session.spring.model.Employee;

public interface EmployeeDAO {

	public void addEmployee(Employee emp);
	public void updateEmployee(Employee emp);
	public List<Employee> listEmployee();
	public Employee getEmployeeById(int id);
	public void removeEmployee(int id);
}
