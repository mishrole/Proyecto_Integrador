package com.veterinaria.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Incidente;
import com.veterinaria.service.IncidenteService;

@Controller
public class IncidenteController {

	@Autowired
	private IncidenteService service;
	
	@RequestMapping("/listaIncidentePorCodigo")
	@ResponseBody
	public List<Incidente> listaIncidentePorCodigo(Integer codigo_cita) {
		return service.listaIncidentePorCodigo(codigo_cita);
	}
	
	@RequestMapping("/listaIncidente")
	@ResponseBody
	public List<Incidente> listaIncidente() {
		return service.listaIncidente();
	}
	
	
	@RequestMapping("/listaIncidentePorUsuario")
	@ResponseBody
	public List<Incidente> listaIncidentePorUsuario(Integer codigo_usuario) {
		return service.listaIncidentePorUsuario(codigo_usuario);
	}
	
	@RequestMapping("/registraIncidente")
	@ResponseBody
	public Map<String, Object> registra(Incidente objIncidente) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		/*objIncidente.setFecha_solicitud_cita(new Date());
		objIncidente.setCodigo_estado_cita(1);*/
		
		Incidente objSalida = null;
		
		try {
			objSalida = service.insertaIncidente(objIncidente);
			if(objSalida == null) {
				salida.put("MENSAJE", "El registro no pudo ser completado");
			} else {
				salida.put("MENSAJE", "¡Registro exitoso!");
			}
		} catch (Exception e) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} finally {
			List<Incidente> lista = service.listaIncidente();
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	
}
