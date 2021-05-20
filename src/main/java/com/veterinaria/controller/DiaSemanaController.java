package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.DiaSemana;
import com.veterinaria.service.DiaSemanaService;

@Controller
public class DiaSemanaController {

	@Autowired
	private DiaSemanaService service;

	@RequestMapping("/listaDiaSemana")
	@ResponseBody
	public List<DiaSemana> listaDiaSemana() {
		return service.listaDiaSemana();
	}
}
