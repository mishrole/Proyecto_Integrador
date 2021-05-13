package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Raza;
import com.veterinaria.service.RazaService;

@Controller
public class RazaController {
	
	@Autowired RazaService service;
	
	@RequestMapping("listaRaza")
	@ResponseBody
	public List<Raza> listaRaza(Integer especie) {
		return service.listaRaza(especie);
	}
}
