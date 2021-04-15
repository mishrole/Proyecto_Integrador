package com.veterinaria.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.veterinaria.entity.Usuario;
import com.veterinaria.service.UsuarioService;

@Controller
public class LoginController {
	
	@Autowired
	private UsuarioService service;
	
	@RequestMapping("/verLogin")
	public String verLogin() {
		return "iniciaSesion";
	}
}
