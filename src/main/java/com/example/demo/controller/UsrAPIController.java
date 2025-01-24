package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrAPIController {

	@RequestMapping("/usr/home/api")
	public String showAPI() {
		return "/usr/home/APITest";
	}

}
