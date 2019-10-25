package com.nail.rin.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nail.rin.dao.CustomerRepository;
import com.nail.rin.dto.Customer;
@Controller
public class CustomerSignup {
	
	@Autowired
	CustomerRepository repo;
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(){
		return "customer/signup_pop";	
	}

	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signupprograss(Customer cust){
		System.out.println(cust);
		int result = repo.insert(cust);
		System.out.println(result);
		return "redirect:/";	
	}
}
