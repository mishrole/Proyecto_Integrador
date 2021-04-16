package com.veterinaria.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.veterinaria.service.UsuarioService;

@Controller
public class AccesoController {
	
	@Autowired
	private UsuarioService service;
	
	@RequestMapping("/")
	public String verInicio() {
		return "inicio";
	}
	
	@RequestMapping("/login")
	public String verLogin() {
		return "iniciaSesion";
	}
}
