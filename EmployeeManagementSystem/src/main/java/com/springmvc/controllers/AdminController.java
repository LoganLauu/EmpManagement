package com.springmvc.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.beans.AddEmployee;
import com.springmvc.beans.EmpManagementUser;
import com.springmvc.dao.EmpManagementUserDao;
import com.springmvc.validator.AddEmployeeValidator;
import com.springmvc.validator.UpdateEmployeeValidator;

@Controller
public class AdminController {

	@Autowired
	EmpManagementUserDao emuDao;

	@Autowired
	AddEmployeeValidator addEmployeeValidator;

	@Autowired
	UpdateEmployeeValidator updateEmployeeValidator;

	@RequestMapping("/viewallemp")
	public String viewemp(Model m) {
		List<EmpManagementUser> emplist = emuDao.getEmployees();
		m.addAttribute("list", emplist);
		return "viewemp";
	}

	@RequestMapping("/addemp")
	public String addempform(Model m) {
		m.addAttribute("addemployee", new AddEmployee());
		return "addempform";
	}

	@RequestMapping(value = "/addemp", method = RequestMethod.POST)
	public String addemp(@Valid @ModelAttribute("addemployee") AddEmployee emp, BindingResult br) {

		addEmployeeValidator.validate(emp, br);

		if (br.hasErrors()) {
			return "addempform";
		} else {
			emuDao.save(emp);
			return "redirect:/viewallemp";
		}
	}

	@RequestMapping(value = "/deleteemp/{id}", method = RequestMethod.GET)
	public String deleteemp(@PathVariable int id) {
		emuDao.deleteemp(id);
		return "redirect:/viewallemp";
	}

	@RequestMapping(value = "/updateemp/{id}", method = RequestMethod.GET)
	public String updateform(Model m, @PathVariable int id) {
		EmpManagementUser user = emuDao.getEmployeeById(id).get(0);
		m.addAttribute("empmanagementuser", new EmpManagementUser());
		m.addAttribute("emp", user);
		return "updateempform";
	}

	@RequestMapping(value = "/updateemp/{id}", method = RequestMethod.POST)
	public String updateemp(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("empmanagementuser") EmpManagementUser updateduser, BindingResult br, Model m) {
		updateEmployeeValidator.validate(updateduser, br);
		if (br.hasErrors()) {
			m.addAttribute("emp", updateduser);
			return "updateempform";
		}
		emuDao.updateemp(updateduser);
		return "redirect:/viewallemp";
	}

}
