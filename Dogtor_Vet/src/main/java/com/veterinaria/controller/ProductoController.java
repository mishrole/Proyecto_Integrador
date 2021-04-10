package com.veterinaria.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Producto;
import com.veterinaria.service.ProductoService;

@Controller
public class ProductoController {
	
	@Autowired
	private ProductoService service;
	
	@RequestMapping("/verRegistraProducto")
	public String verRegistra() {
		return "registraProducto";
	}
	
	@RequestMapping("/registraProducto")
	@ResponseBody
	public Map<String, Object> registra(Producto objProducto) {
		
		Map<String, Object> salida = new HashMap<>();
		Producto objSalida = service.insertaProducto(objProducto);
		
		if (objSalida == null) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} else {
			salida.put("MENSAJE", "¡Registro exitoso!");
		}
		
		return salida;
	}
}
