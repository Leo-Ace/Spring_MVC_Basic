package com.demo2.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo2.dao.StudentImpl;

@Controller
public class StudentController {
	@Autowired(required = true)
	StudentImpl studentImpl;
	
	@RequestMapping(value = {"/student"}, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("data", studentImpl.getAll());
		
		return "student/index";
	}
}
