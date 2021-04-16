package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.DetalleRolUsuario;
import com.veterinaria.entity.DetalleRolUsuarioPK;
import com.veterinaria.entity.Rol;
import com.veterinaria.service.DetalleRolUsuarioService;
import com.veterinaria.service.RolService;
import com.veterinaria.service.UsuarioService;

@Controller
public class DetalleRolUsuarioController {
	
	@Autowired
	private RolService rolService;
	
	@Autowired
	private DetalleRolUsuarioService detalleRolUsuarioService;
	/*
	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired
	private DetalleRolUsuario detalleUsuarioRolService;
	
	@RequestMapping("/listaRol")
	@ResponseBody
	public List<Rol> listaRol() {
		return rolService.listaRol();
	}
	
	@RequestMapping("/listaRolPorUsuario")
	@ResponseBody
	public List<Rol> listaRolPorUsuario(Integer codigo_usuario) {
		return rolService.listaRolPorUsuario(codigo_usuario);
	}
	*/
	
	@RequestMapping("/registraDetalleRolUsuario")
	@ResponseBody
	public List<Rol> registraDetalleRolUsuario(Integer codigo_rol_usuario, Integer codigo_usuario) {
		DetalleRolUsuarioPK objRolUsuarioPK = new DetalleRolUsuarioPK();
		objRolUsuarioPK.setCodigo_rol_usuario(codigo_rol_usuario);
		objRolUsuarioPK.setCodigo_usuario(codigo_usuario);
		
		DetalleRolUsuario objRolUsuario = new DetalleRolUsuario();
		objRolUsuario.setIdUsuarioRol(objRolUsuarioPK);
		
		detalleRolUsuarioService.insertaUsuarioRol(objRolUsuario);
		return rolService.listaRolPorUsuario(codigo_usuario);
	}
	
	@RequestMapping("/eliminaDetalleRolUsuario")
	@ResponseBody
	public List<Rol> eliminaDetalleRolUsuario(Integer codigo_rol_usuario, Integer codigo_usuario) {
		DetalleRolUsuarioPK objRolUsuarioPK = new DetalleRolUsuarioPK();
		objRolUsuarioPK.setCodigo_rol_usuario(codigo_rol_usuario);
		objRolUsuarioPK.setCodigo_usuario(codigo_usuario);
		
		DetalleRolUsuario objRolUsuario = new DetalleRolUsuario();
		objRolUsuario.setIdUsuarioRol(objRolUsuarioPK);
		
		detalleRolUsuarioService.eliminaUsuarioRol(objRolUsuario);
		return rolService.listaRolPorUsuario(codigo_usuario);
	}
	

}
