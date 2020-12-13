package com.iu.sb5.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
		
	@GetMapping(value="/")
	public String home() {
		return "index";
	}
	
}

