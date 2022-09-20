package com.springmvc.controllers;

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

import com.springmvc.beans.EmpManagementUser;
import com.springmvc.dao.EmpManagementUserDao;
import com.springmvc.validator.EmailValidator;
import com.springmvc.validator.PhoneValidator;
import com.springmvc.validator.UpdateLoginValidator;
import com.springmvc.validator.UpdateProfileValidator;

@Controller
public class EmployeeController {

	@Autowired
	EmpManagementUserDao emuDao;

	@Autowired
	UpdateProfileValidator updateProfileValidator;

	@Autowired
	UpdateLoginValidator updateLoginValidator;

	@Autowired
	EmailValidator emailValidator;

	@Autowired
	PhoneValidator phoneValidator;

	@RequestMapping(value = "/viewprofile/{username}", method = RequestMethod.GET)
	public String viewprofile(Model m, @PathVariable String username) {
		EmpManagementUser user = emuDao.getEmployeeByUsername(username).get(0);
		m.addAttribute("empmanagementuser", new EmpManagementUser());
		m.addAttribute("emp", user);
		return "viewprofile";
	}

	@RequestMapping(value = "/viewprofile/updateprofile/{id}", method = RequestMethod.GET)
	public String updateform(Model m, @PathVariable int id) {
		EmpManagementUser user = emuDao.getEmployeeById(id).get(0);
		m.addAttribute("empmanagementuser", new EmpManagementUser());
		m.addAttribute("emp", user);
		return "updateprofile";
	}

	@RequestMapping(value = "/viewprofile/updateprofile/{id}", method = RequestMethod.POST)
	public String updateemp(HttpServletRequest request, HttpServletResponse response, Model m,
			@Valid @ModelAttribute("empmanagementuser") EmpManagementUser updateprofile, @PathVariable int id,
			BindingResult br) {

		updateProfileValidator.validate(updateprofile, br);
		Boolean emailChecker = EmailValidator.isValid(updateprofile.getEmail());
		Boolean phoneChecker = PhoneValidator.isValid(updateprofile.getPhone());

		if (br.hasErrors()) {
			m.addAttribute("emp", updateprofile);
			return "updateprofile";
		} else {

			if (!phoneChecker) {
				m.addAttribute("emp", updateprofile);
				m.addAttribute("phonemsg", "Invalid Phone");
				return "updateprofile";
			}

			if (!emailChecker) {
				m.addAttribute("emp", updateprofile);
				m.addAttribute("emailmsg", "Invalid Email");
				return "updateprofile";
			}

			emuDao.updateemp(updateprofile);
			EmpManagementUser user = emuDao.getEmployeeById(id).get(0);
			return "redirect:/viewprofile/" + user.getUsername() + "";
		}

	}

	@RequestMapping(value = "/changelogindetails/{username}", method = RequestMethod.GET)
	public String changeloginform(Model m, @PathVariable String username) {
		EmpManagementUser user = emuDao.getEmployeeByUsername(username).get(0);
		m.addAttribute("empmanagementuser", new EmpManagementUser());
		m.addAttribute("emp", user);
		return "changeloginform";
	}

	@RequestMapping(value = "/changelogindetails/{username}", method = RequestMethod.POST)
	public String changeloginPost(Model m, @Valid @ModelAttribute("empmanagementuser") EmpManagementUser updateprofile,
			@PathVariable String username, BindingResult br) {
		EmpManagementUser user = new EmpManagementUser();
		user.setUsername(updateprofile.getUsername());
		user.setPassword(updateprofile.getPassword());
		user.setAccountType(updateprofile.getAccountType());
		updateLoginValidator.validate(updateprofile, br);

		if (br.hasErrors()) {
			m.addAttribute("emp", updateprofile);
			return "changeloginform";

		} else {
			emuDao.changelogin(updateprofile);
			return "redirect:/viewprofile/" + user.getUsername() + "";
		}

	}

}