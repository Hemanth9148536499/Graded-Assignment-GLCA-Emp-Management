package com.session.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.session.spring.model.Employee;
import com.session.spring.service.EmployeeService;

@Controller
public class EmployeeController {

	private EmployeeService employeeService;

	@Autowired(required = true)
	@Qualifier(value = "employeeService")
	public void setEmployeeService(EmployeeService es) {
		this.employeeService = es;
	}

	@RequestMapping("/list")
	public String list(Model model) {

		model.addAttribute("listEmployee", this.employeeService.listEmployee());
		return "empList";

	}

	@RequestMapping("/addEmployee")
	public String addEmployee() {

		return "emp-Add";

	}

	@RequestMapping("/processAddEmployee")
	public String showEmployee(@ModelAttribute("employee") Employee emp) {

//		this.employeeService.addEmployee(emp);
		
		if(emp.getId() == 0){
			//new employee, add it
			this.employeeService.addEmployee(emp);
		}else{
			//existing employee, call update
			this.employeeService.updateEmployee(emp);
		}

		return "redirect:/list";

	}

	@RequestMapping("/remove/{id}")
	public String removeEmployee(@PathVariable("id") int id) {

		this.employeeService.removeEmployee(id);
		return "redirect:/list";
	}

	@RequestMapping("/edit/{id}")
	public String editEmployee(@PathVariable("id") int id, Model model) {


		model.addAttribute("employee", this.employeeService.getEmployeeById(id));
		model.addAttribute("listEmployee", this.employeeService.listEmployee());
		return "edit";
	}
	
	@RequestMapping("/show")
	public String show() {

		return "show";

	}

}
