package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Cita;
import com.veterinaria.service.CitaService;

@Controller
public class CitaController {
	
	@Autowired
	private CitaService service;
	
	@RequestMapping("/listaCitaPorCodigo")
	@ResponseBody
	public List<Cita> listaCitaPorCodigo(Integer codigo_cita) {
		return service.listaCitaPorCodigo(codigo_cita);
	}
	
	@RequestMapping("/listaCita")
	@ResponseBody
	public List<Cita> listaCita() {
		return service.listaCita();
	}
}
