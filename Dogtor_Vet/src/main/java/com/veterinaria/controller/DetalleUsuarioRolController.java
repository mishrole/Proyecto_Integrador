package com.veterinaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.DetalleUsuarioRol;
import com.veterinaria.entity.DetalleUsuarioRolPK;
import com.veterinaria.entity.Rol;
import com.veterinaria.service.DetalleUsuarioRolService;
import com.veterinaria.service.RolService;

@Controller
public class DetalleUsuarioRolController {
	
	@Autowired
	private RolService rolService;
	
	@Autowired
	private DetalleUsuarioRolService detalleUsuarioRolService;
	
	@RequestMapping("/registraDetalleUsuarioRol")
	@ResponseBody
	public List<Rol> registraDetalleUsuarioRol(Integer codigo_rol_usuario, Integer codigo_usuario) {
		DetalleUsuarioRolPK objRolUsuarioPK = new DetalleUsuarioRolPK();
		objRolUsuarioPK.setCodigo_rol_usuario(codigo_rol_usuario);
		objRolUsuarioPK.setCodigo_usuario(codigo_usuario);
		
		DetalleUsuarioRol objRolUsuario = new DetalleUsuarioRol();
		objRolUsuario.setObjDetalleUsuarioRolPK(objRolUsuarioPK);
		
		detalleUsuarioRolService.insertaUsuarioRol(objRolUsuario);
		return rolService.listaRolPorUsuario(codigo_usuario);
	}
	
	@RequestMapping("/eliminaDetalleUsuarioRol")
	@ResponseBody
	public List<Rol> eliminaDetalleUsuarioRol(DetalleUsuarioRol detalleUsuarioRol) {		
		detalleUsuarioRolService.eliminaUsuarioRol(detalleUsuarioRol);
		return rolService.listaRolPorUsuario(detalleUsuarioRol.getObjDetalleUsuarioRolPK().getCodigo_usuario());
	}
	

}
