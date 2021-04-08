package com.veterinaria.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Usuario;
import com.veterinaria.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService service;
	
	@RequestMapping("/verRegistraUsuario")
	public String verRegistra() {
		return "registraUsuario";
	}
	
	@RequestMapping("/registraUsuario")
	@ResponseBody
	public Map<String, Object> registra(Usuario objUsuario) {
		Map<String, Object> salida = new HashMap<>();
		Usuario objSalida = service.insertaUsuario(objUsuario);
		
		if (objSalida == null) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} else {
			salida.put("MENSAJE", "¡Registro exitoso!");
		}
		
		return salida;
	}
	
}
