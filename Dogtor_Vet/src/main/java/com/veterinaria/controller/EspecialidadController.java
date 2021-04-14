package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Especialidad;
import com.veterinaria.service.EspecialidadService;

@Controller
public class EspecialidadController {
	
	@Autowired
	private EspecialidadService service;
	
	@RequestMapping("/listaEspecialidad")
	@ResponseBody
	public List<Especialidad> listaEspecialidad() {
		return service.listaEspecialidad();
	}
}
