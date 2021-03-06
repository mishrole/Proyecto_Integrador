package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Sexo;
import com.veterinaria.service.SexoService;

@Controller
public class SexoController {
	
	@Autowired
	private SexoService service;
	
	@RequestMapping("/listaSexo")
	@ResponseBody
	public List<Sexo> listaSexo() {
		return service.listaSexo();
	}
}
