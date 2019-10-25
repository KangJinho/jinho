package com.nail.rin.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ConnectController {

	@RequestMapping(value="/best", method=RequestMethod.GET)
	public String best(){
		
		return "sidemenu/best";
	};
	@RequestMapping(value="/care", method=RequestMethod.GET)
	public String care(){
		
		return "sidemenu/care";
	};
	@RequestMapping(value="/jell", method=RequestMethod.GET)
	public String jell(){
		
		return "sidemenu/jell";
	};
	@RequestMapping(value="/parts", method=RequestMethod.GET)
	public String parts(){
		
		return "sidemenu/parts";
	};
	@RequestMapping(value="/reco", method=RequestMethod.GET)
	public String reco(){
		
		return "sidemenu/reco";
	};
}
