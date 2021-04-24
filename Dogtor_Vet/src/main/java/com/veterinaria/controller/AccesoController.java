package com.veterinaria.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.veterinaria.entity.Enlace;
import com.veterinaria.entity.Rol;
import com.veterinaria.entity.Usuario;
import com.veterinaria.service.UsuarioService;

@Controller
public class AccesoController {
	
	@Autowired
	private UsuarioService service;
	
	@RequestMapping("/")
	public String verInicio() {
		return "inicio";
	}
	
	@RequestMapping("/login")
	public String verLogin() {
		return "iniciaSesion";
	}
	
	@RequestMapping("/acceder")
	public String login(Usuario objUsuario, HttpSession session, HttpServletRequest request) {
		Usuario usuario = service.login(objUsuario);
		
		if(usuario == null) {
			request.setAttribute("MENSAJE", "El usuario no existe");
			return "iniciaSesion";
		} else {
			List<Enlace> menus = service.obtenerEnlacesDeUsuario(usuario.getCodigo_usuario());
			List<Rol> roles = service.obtenerRolesDeUsuario(usuario.getCodigo_usuario());
			
			if(roles.size() < 1 || menus.size() < 1) {
				request.setAttribute("MENSAJE", "El usuario no ha sido habilitado");
				return "iniciaSesion";
			}
			
			session.setAttribute("objUsuario", usuario);
			session.setAttribute("objMenus", menus);
			session.setAttribute("objRoles", roles);
			
			String homeRol = "";
			
			if(roles.get(0).getCodigo_rol_usuario() == 1) {
				homeRol = "homeAdministrador";
			} else if (roles.get(0).getCodigo_rol_usuario() == 2) {
				homeRol = "homeCliente";
			}
			
			return "redirect:" + homeRol;
			
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		session.invalidate();
		
		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Expires", "0");
		response.setHeader("Pragma", "no-cache");
		
		request.setAttribute("MENSAJE", "El usuario cerró sesión");
		return "iniciaSesion";
	}

	@RequestMapping("/homeCliente")
	public String verHomeCliente() {
		return "homeCliente";
	}
	
	@RequestMapping("/homeAdministrador")
	public String verHomeAdministrador() {
		return "homeAdministrador";
	}
	
}
