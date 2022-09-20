package com.springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/aboutus")
	public String showAboutUs() {
		return "aboutus";
	}

	@RequestMapping("/contactus")
	public String showContactUs() {
		return "contactus";
	}

}
