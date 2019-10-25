package com.nail.rin.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nail.rin.dao.CustomerRepository;
import com.nail.rin.dto.Customer;
@Controller
public class CustomerLogin {
	
	@Autowired
	CustomerRepository repo;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(){
		return "customer/login";	
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginprograss(String userid, String userpwd,HttpSession session){
		Customer cust = repo.selectOne(userid,userpwd);
		if(cust != null) {
			session.setAttribute("loginId", cust.getUserid());
			session.setAttribute("loginName", cust.getUsername());
			
		}return "redirect:/";
			
	}
}
