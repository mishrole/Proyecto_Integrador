package com.veterinaria.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Servicio;
import com.veterinaria.service.ServicioService;

@Controller
public class ServicioController {
	
	@Autowired
	private ServicioService service;
	
	// Crud (En proceso)
	
	@RequestMapping("/verServicio")
	public String verRegistra() {
		return "crudServicio";
	}
	
	@RequestMapping("/listaServicioPorNombre")
	@ResponseBody
	public List<Servicio> listaServicioPorNombre(String filtro) {
		return service.listaServicioPorNombreLike(filtro.trim() + "%");
	}
	
	@RequestMapping("/registraServicio")
	@ResponseBody
	public Map<String, Object> registra(Servicio obj) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Servicio objSalida = null;
		try {
			objSalida = service.insertaActualizaServicio(obj);
			if (objSalida == null) {
				salida.put("MENSAJE", "El registro no pudo ser completado");
			} else {
				salida.put("MENSAJE", "¡Registro exitoso!");
			}
		} catch (Exception e) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} finally {
			List<Servicio> lista = service.listaServicio();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	@RequestMapping("/actualizaServicio")
	@ResponseBody
	public Map<String, Object> actualiza(Servicio obj) {
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Servicio> option = service.obtienePorId(obj.getCodigo_servicio());
			if (option.isPresent()) {
				Servicio objSalida = service.insertaServicio(obj);
				if (objSalida == null) {
					salida.put("MENSAJE", "La actualización no pudo ser completada");
				} else {
					salida.put("MENSAJE", "¡Actualización exitosa!");
				}
			} else {
				salida.put("MENSAJE", "Error, el servicio no existe");
			}
		} catch (Exception e) {
			salida.put("MENSAJE", "La actualización no pudo ser completada");
		} finally {
			List<Servicio> lista = service.listaServicio();
			salida.put("lista", lista);
		}
		return salida;
	}
	

	@RequestMapping("/eliminaServicio")
	@ResponseBody
	public Map<String, Object> elimina(int id) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Optional<Servicio> option = service.obtienePorId(id);
		try {
			if (option.isPresent()) {
				service.eliminaServicio(id);
				salida.put("MENSAJE", "¡Eliminación exitosa!");
			} else {
				salida.put("MENSAJE", "Error, la mascota no existe");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error, la mascota no pudo ser eliminada");
		} finally {
			List<Servicio> lista = service.listaServicio();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	
	// Solo registrar
	
	@RequestMapping("/verRegistraServicio")
	public String verRegistraServicio() {
		return "registraServicio";
	}
	
	/*
	
	@RequestMapping("/registraServicio")
	@ResponseBody
	public Map<String, Object> registra(Servicio objServicio) {
		
		Map<String, Object> salida = new HashMap<>();
		Servicio objSalida = service.insertaServicio(objServicio);
		
		if (objSalida == null) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} else {
			salida.put("MENSAJE", "¡Registro exitoso!");
		}
		
		return salida;
	}
	*/
	
}
