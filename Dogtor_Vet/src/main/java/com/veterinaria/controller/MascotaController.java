package com.veterinaria.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Mascota;
import com.veterinaria.service.MascotaService;

@Controller
public class MascotaController {
	
	@Autowired
	private MascotaService service;
	
	@RequestMapping("/verRegistraMascota")
	public String verRegistra() {
		return "registraMascota";
	}
	
	@RequestMapping("/registraMascota")
	@ResponseBody
	public Map<String, Object> registra(Mascota objMascota) {
		
		Map<String, Object> salida = new HashMap<>();
		Mascota objSalida = service.insertaMascota(objMascota);
		
		if(objSalida == null) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} else {
			salida.put("MENSAJE", "¡Registro exitoso!");
		}
		
		return salida;
	}
}
