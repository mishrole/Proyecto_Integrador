package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.EstadoCita;
import com.veterinaria.service.EstadoCitaService;

@Controller
public class EstadoCitaController {
	@Autowired
	private EstadoCitaService service;
	
	@RequestMapping("/listaEstadoCita")
	@ResponseBody
	public List<EstadoCita> listaEstadoCitas() {
		return service.listaEstadoCitas();
	}
}
