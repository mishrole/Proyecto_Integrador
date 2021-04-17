package com.veterinaria.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Usuario;
import com.veterinaria.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	/* Nueva cuenta de tipo Cliente */
	
	@RequestMapping("/nuevaCuenta")
	public String verRegistraCliente() {
		return "registraCliente";
	}
	
	@RequestMapping("/registraCliente")
	@ResponseBody
	public Map<String, Object> registra(Usuario objUsuario) {
		
		Map<String, Object> salida = new HashMap<>();
		Usuario objSalida = usuarioService.insertaUsuario(objUsuario);
		
		if (objSalida == null) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} else {
			salida.put("MENSAJE", "¡Registro exitoso!");
			salida.put("COD_USER", objSalida.getCodigo_usuario());
		}
		
		return salida;
	}
	
	/* Login de Usuario */
	
	@RequestMapping("/listaUsuarioPorEmailYContrasena")
	@ResponseBody
	public List<Usuario> listaUsuarioPorEmailYContrasena(String email_usuario, String contrasena_usuario) {
		return usuarioService.listausuarioPorEmailYContrasena(email_usuario, contrasena_usuario);
	}
	
	/* Crud para Administrador */
	
	@RequestMapping("/verUsuario")
	public String verRegistra() {
		return "crudUsuario";
	}
	
	@RequestMapping("/listaUsuarioPorNombre")
	@ResponseBody
	public List<Usuario> listaUsuarioPorNombre(String nombre_usuario) {
		return usuarioService.listaUsuarioPorNombre(nombre_usuario.trim());
	}
	
	@RequestMapping("/registraUsuario")
	@ResponseBody
	public Map<String, Object> register(Usuario objUsuario) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Usuario objSalida = null;
		
		try {
			objSalida = usuarioService.insertaUsuario(objUsuario);
			
			if(objSalida == null) {
				salida.put("MENSAJE", "El registro no pudo ser completado");
			} else {
				salida.put("MENSAJE", "¡Registro exitoso!");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} finally {
			List<Usuario> lista = usuarioService.listaUsuario();
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	@RequestMapping("/actualizaUsuario")
	@ResponseBody
	public Map<String, Object> actualiza(Usuario objUsuario) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		try {
			Optional<Usuario> option = usuarioService.obtieneUsuarioPorId(objUsuario.getCodigo_usuario());
			
			if(option.isPresent()) {
				Usuario objSalida = usuarioService.insertaUsuario(objUsuario);
				
				if(objSalida == null) {
					salida.put("MENSAJE", "La actualización no pudo ser completada");
				} else {
					salida.put("MENSAJE", "¡Actualización exitosa!");
				}
			} else {
				salida.put("MENSAJE", "Error, el usuario no existe");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "La actualización no pudo ser completada");
		} finally {
			List<Usuario> lista = usuarioService.listaUsuario();
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	@RequestMapping("/eliminaUsuario")
	@ResponseBody
	public Map<String, Object> elimina(Integer codigo_usuario) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Usuario> option = usuarioService.obtieneUsuarioPorId(codigo_usuario);
		
		try {
			if(option.isPresent()) {
				usuarioService.eliminaUsuario(codigo_usuario);
				salida.put("MENSAJE", "¡Eliminación exitosa!");
			} else {
				salida.put("MENSAJE", "Error, el usuario no existe");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error, el usuario no pudo ser eliminado");
		} finally {
			List<Usuario> lista = usuarioService.listaUsuario();
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
}
