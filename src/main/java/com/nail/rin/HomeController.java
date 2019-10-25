package com.nail.rin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {

		return "home";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home2() {

		return "home";
	}
	
	@RequestMapping(value = "/itroduce", method = RequestMethod.GET)
	public String intro() {

		return "introduce/introduce";
	}
}
