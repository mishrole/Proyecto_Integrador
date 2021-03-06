package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.CategoriaProducto;
import com.veterinaria.service.CategoriaProductoService;

@Controller
public class CategoriaProductoController {
	
	@Autowired
	private CategoriaProductoService service;
	
	@RequestMapping("/listaCategoriaProducto")
	@ResponseBody
	public List<CategoriaProducto> listaCategoriaProducto() {
		return service.listaCategoriaProducto();
	}
}
