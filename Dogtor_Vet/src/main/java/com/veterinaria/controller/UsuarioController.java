package com.veterinaria.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsuarioController {
	
	@RequestMapping("/verRegistraUsuario")
	public String verRegistra() {
		return "registraUsuario";
	}
	
	@RequestMapping("/verAccedeUsuario")
	public String verAccede() {
		return "accedeUsuario";
	}
}
