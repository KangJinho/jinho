package com.nail.rin.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nail.rin.dao.CustomerRepository;

@Controller
public class CustomerController {
	@Autowired
	CustomerRepository repo;
	
	@RequestMapping(value="/show", method=RequestMethod.GET)
	public String show(){
	
		return "gallery/show";	
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logoutprograss(HttpSession session){
		session.invalidate();
		
		return "redirect:/";	
	}
}
