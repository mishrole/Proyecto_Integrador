package com.veterinaria.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Mascota;
import com.veterinaria.service.MascotaService;

@Controller
public class MascotaController {
	
	@Autowired
	private MascotaService service;
	
	@RequestMapping("/verRegistraMascota")
	public String verRegistra() {
		return "registraMascota";
	}
	
	@RequestMapping("/listaMascotaPorNombre")
	public List<Mascota> listaMascotaPorNombre(String nombre_mascota) {
		return service.listaMascotaPorNombre(nombre_mascota.trim() + "%");
	}
	
	@RequestMapping("/registraMascota")
	@ResponseBody
	public Map<String, Object> registra(Mascota objMascota) {
		
		Map<String, Object> salida = new HashMap<String, Object>();
		Mascota objSalida = null;
		
		try {
			objSalida = service.insertaMascota(objMascota);
			
			if(objSalida == null) {
				salida.put("MENSAJE", "El registro no pudo ser completado");
			} else {
				salida.put("MENSAJE", "¡Registro exitoso!");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} finally {
			List<Mascota> lista = service.listaMascota();
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	@RequestMapping("/actualizaMascota")
	@ResponseBody
	public Map<String, Object> actualiza(Mascota objMascota) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		try {
			Optional<Mascota> option = service.obtienePorId(objMascota.getCodigo_mascota());
			
			if(option.isPresent()) {
				Mascota objSalida = service.insertaMascota(objMascota);
				
				if(objSalida == null) {
					salida.put("MENSAJE", "La actualización no pudo ser completada");
				} else {
					salida.put("MENSAJE", "¡Actualización exitosa!");
				}
			} else {
				salida.put("MENSAJE", "Error, la mascota no existe");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "La actualización no pudo ser completada");
		} finally {
			List<Mascota> lista = service.listaMascota();
			salida.put("lista", lista);
		}
		
		return salida;
	}

	@RequestMapping("/eliminaMascota")
	@ResponseBody
	public Map<String, Object> elimina(Integer codigo_mascota) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Mascota> option = service.obtienePorId(codigo_mascota);
		
		try {
			if(option.isPresent()) {
				service.eliminaMascota(codigo_mascota);
				salida.put("MENSAJE", "¡Eliminación exitosa!");
			} else {
				salida.put("MENSAJE", "Error, la mascota no existe");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error, la mascota no pudo ser eliminada");
		} finally {
			List<Mascota> lista = service.listaMascota();
			salida.put("lista", lista);
		}
		
		return salida;
	}
}
