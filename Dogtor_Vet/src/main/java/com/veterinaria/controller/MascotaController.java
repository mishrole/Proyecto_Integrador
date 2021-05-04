package com.veterinaria.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.veterinaria.entity.Mascota;
import com.veterinaria.service.MascotaService;

@Controller
public class MascotaController {
	
	@Value("${resourcesDir}")
	private String uploadFolder;
	
	@Autowired
	private MascotaService service;
	
	@PostMapping("/registraMascotaConFoto")
	public @ResponseBody ResponseEntity<?> createMascota(@RequestParam(value = "codigo_propietario") Integer codigoPropietario,
	@RequestParam(value = "nombre_mascota") String nombreMascota, @RequestParam(value = "codigo_especie_mascota") Integer especieMascota,
	@RequestParam(value = "codigo_raza_mascota") Integer razaMascota, @RequestParam(value = "codigo_color_mascota") Integer colorMascota,
	@RequestParam(value = "codigo_sexo_mascota") Integer sexoMascota, @RequestParam(value = "fecha_nacimiento_mascota") String nacimientoMascota,
	@RequestParam(value = "codigo_identificacion_mascota", required = false) String identificacionMascota,
	@RequestParam(value = "codigo_cartilla_sanitaria", required = false) String cartillaMascota,
	Model model, HttpServletRequest request, final @RequestParam(value = "foto_mascota") MultipartFile file) {

		try {
			String uploadDirectory = request.getServletContext().getRealPath(uploadFolder);
			String fileName = file.getOriginalFilename();
			String filePath = Paths.get(uploadDirectory, fileName).toString();
			
			if(fileName == null || fileName.contains("..")) {
				model.addAttribute("invalid", "¡Oops! El archivo contiene un path inválido \" + filename");
				return new ResponseEntity<>("¡Oops! El nombre del archivo contiene un path inválido" +  fileName, HttpStatus.BAD_REQUEST);
			}
			
			String[] nombres = nombreMascota.split(",");
			
			try {
				File dir = new File(uploadDirectory);
				if(!dir.exists()) {
					dir.mkdirs();
				}
				
				// Guardar localmente
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
				stream.write(file.getBytes());
				stream.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			byte[] imageData = file.getBytes();
			
			Mascota mascota = new Mascota();
			mascota.setCodigo_mascota(null);
			mascota.setCodigo_propietario(codigoPropietario);
			mascota.setNombre_mascota(nombres[0]);
			mascota.setFoto_mascota(imageData);
			mascota.setCodigo_raza_mascota(razaMascota);
			mascota.setCodigo_especie_mascota(especieMascota);
			mascota.setCodigo_color_mascota(colorMascota);
			mascota.setCodigo_sexo_mascota(sexoMascota);
			mascota.setFecha_nacimiento_mascota(nacimientoMascota);
			mascota.setCodigo_identificacion_mascota(identificacionMascota);
			mascota.setCodigo_cartilla_sanitaria(cartillaMascota);
			mascota.setCodigo_visibilidad(1);
			
			service.insertaMascota(mascota);
			return new ResponseEntity<>("Producto guardado con archivo - " + fileName, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(""+codigoPropietario, HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping("/verMascota")
	public String verRegistra() {
		return "crudMascota";
	}
	
	@RequestMapping("/listaMascotaPorNombre")
	@ResponseBody
	public List<Mascota> listaMascotaPorNombre(String nombre_mascota) {
		return service.listaMascotaPorNombre(nombre_mascota.trim());
	}
	
	@RequestMapping("/listaMascotaPorPropietario")
	@ResponseBody
	public List<Mascota> listaMascotaPorPropietario(Integer codigo_propietario) {
		return service.listaMascotaPorPropietario(codigo_propietario);
	}
	
	@RequestMapping("/registraMascota")
	@ResponseBody
	public Map<String, Object> registra(Mascota objMascota) {
		
		Map<String, Object> salida = new HashMap<String, Object>();
		Mascota objSalida = null;
		
		try {
			objMascota.setCodigo_visibilidad(1); // Visibilidad 1 = Visible
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
	
	@RequestMapping("/actualizaVisibilidadMascota")
	@ResponseBody
	public Map<String, Object> actualizaVisibilidadMascota(Integer codigo_mascota, Integer codigo_visibilidad) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Mascota> option = service.obtienePorId(codigo_mascota);
		
		try {
			if(option.isPresent()) {
				option.ifPresent((Mascota result) -> {
					result.setCodigo_visibilidad(codigo_visibilidad);
					
					Mascota mascotaSalida = service.insertaMascota(result);
					
					if(mascotaSalida != null) {
						salida.put("MENSAJE", "El estado de la mascota ha sido modificado");
					}
				});
			} else {
				salida.put("MENSAJE", "Error, la mascota no existe");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error, la visibilidad no pudo ser actualizada");
		} finally {
			List<Mascota> lista = service.listaMascota();
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	/*
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
	*/
}
