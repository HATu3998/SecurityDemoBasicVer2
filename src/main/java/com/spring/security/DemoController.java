package com.spring.security;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	@GetMapping("/")
	public String showPage() {
		return "home";
	}
	
	@GetMapping("/h")
	public String showAccess() {
		return "h";
	}
	
	@GetMapping("/login")
	public String showLogin() {
		return "login";
	}
	
}
