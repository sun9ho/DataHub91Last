package com.mycompany.webapp.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.service.IDomainService;
import com.mycompany.webapp.service.ITermService;
import com.mycompany.webapp.service.IWordService;


@Controller
public class HomeController {
	
	
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}	
	
	
}

