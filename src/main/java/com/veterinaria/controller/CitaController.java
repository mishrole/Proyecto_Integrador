package com.veterinaria.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Cita;
import com.veterinaria.service.CitaService;

@Controller
public class CitaController {
	
	@Autowired
	private CitaService service;
	
	@RequestMapping("/listaCitaPorCodigo")
	@ResponseBody
	public List<Cita> listaCitaPorCodigo(Integer codigo_cita) {
		return service.listaCitaPorCodigo(codigo_cita);
	}
	
	@RequestMapping("/listaCita")
	@ResponseBody
	public List<Cita> listaCita() {
		return service.listaCita();
	}
	
	@RequestMapping("/registraCita")
	@ResponseBody
	public Map<String, Object> registra(Cita objCita) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		objCita.setFecha_solicitud_cita(new Date());
		objCita.setCodigo_estado_cita(1);
		
		Cita objSalida = null;
		
		try {
			objSalida = service.insertaCita(objCita);
			if(objSalida == null) {
				salida.put("MENSAJE", "El registro no pudo ser completado");
			} else {
				salida.put("MENSAJE", "¡Registro exitoso!");
			}
		} catch (Exception e) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} finally {
			List<Cita> lista = service.listaCita();
			salida.put("lista", lista);
		}
		
		return salida;
	}
}
