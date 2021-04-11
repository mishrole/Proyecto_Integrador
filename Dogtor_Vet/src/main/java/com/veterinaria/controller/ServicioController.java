package com.veterinaria.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Servicio;
import com.veterinaria.service.ServicioService;

@Controller
public class ServicioController {
	
	@Autowired
	private ServicioService service;
	
	@RequestMapping("/verRegistraServicio")
	public String verRegistra() {
		return "registraServicio";
	}
	
	@RequestMapping("/registraServicio")
	@ResponseBody
	public Map<String, Object> registra(Servicio objServicio) {
		
		Map<String, Object> salida = new HashMap<>();
		Servicio objSalida = service.insertaServicio(objServicio);
		
		if (objSalida == null) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} else {
			salida.put("MENSAJE", "¡Registro exitoso!");
		}
		
		return salida;
	}
	
}
