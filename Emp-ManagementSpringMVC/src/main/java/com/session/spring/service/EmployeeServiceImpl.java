package com.session.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.session.spring.dao.EmployeeDAO;
import com.session.spring.model.Employee;



@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	private EmployeeDAO empDAO;

//	public void setEmployeeDAO(EmployeeDAO empDAO) {
//		this.empDAO = empDAO;
//	}
	
	public void setEmpDAO(EmployeeDAO empDAO) {
		this.empDAO = empDAO;
	}

	

	@Override
	@Transactional
	public void addEmployee(Employee emp) {
		this.empDAO.addEmployee(emp);
	}

	
	
	@Override
	@Transactional
	public void updateEmployee(Employee emp) {
		this.empDAO.updateEmployee(emp);
	}

	@Override
	@Transactional
	public List<Employee> listEmployee() {
		return this.empDAO.listEmployee();
	}

	@Override
	@Transactional
	public Employee getEmployeeById(int id) {
		return this.empDAO.getEmployeeById(id);
	}

	@Override
	@Transactional
	public void removeEmployee(int id) {
		this.empDAO.removeEmployee(id);
	}

}
