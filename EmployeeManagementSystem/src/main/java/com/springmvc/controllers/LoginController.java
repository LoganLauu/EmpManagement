package com.springmvc.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.beans.EmpManagementUser;
import com.springmvc.beans.Login;
import com.springmvc.dao.EmpManagementUserDao;

@Controller
public class LoginController {

	@Autowired
	EmpManagementUserDao emuDao;

//	@RequestMapping(value = "/loginProcess", method = RequestMethod.GET)
//	public ModelAndView getLogin(HttpServletRequest request, HttpServletResponse response,
//			@ModelAttribute("login") @Validated Login login, BindingResult bindingResult) {
//
//		return this.login(request, response, login, bindingResult);
//	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, Model m) {
		m.addAttribute("login", new Login());
		ModelAndView mav = null;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Login validateUser = new Login();
		validateUser.setUsername(username);
		validateUser.setPassword(password);

		EmpManagementUser user = emuDao.validateUser(validateUser);

//		if (bindingResult.hasErrors()) {
//			mav = new ModelAndView("loginform");
//			return mav;
//		}

		if (user != null) {
			if (user.getAccountType().equalsIgnoreCase("admin")) {
				mav = new ModelAndView("adminportal");
				mav.addObject("username", user.getUsername());

			} else {
				mav = new ModelAndView("employeeportal");
				mav.addObject("username", user.getUsername());

			}

		} else {
			mav = new ModelAndView("index");
			mav.addObject("message", "Username, Password or AccountType is wrong!!");
		}

		return mav;
	}

}
