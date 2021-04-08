package com.veterinaria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.veterinaria.entity.Usuario;
import com.veterinaria.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService service;
	
	@RequestMapping("/verUsuario")
	public String verRegistra() {
		return "registraUsuario";
	}
	
	@RequestMapping("/registroDeUsuario")
	public String registra(Usuario objUsuario, HttpSession session) {
		Usuario objSalida = service.insertaUsuario(objUsuario);
		
		if (objSalida == null) {
			session.setAttribute("MENSAJE", "El registro no pudo ser completado");
		} else {
			session.setAttribute("MENSAJE", "¡Registro exitoso!");
		}
		return "redirect:verUsuario";
	}
}
