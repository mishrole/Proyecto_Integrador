package com.veterinaria.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.veterinaria.entity.Producto;
import com.veterinaria.repository.ProductoRepository;
import com.veterinaria.service.ProductoService;

@Controller
public class ProductoController {
	
	@Autowired
	private ProductoService service;
	private ProductoRepository productoRepo;
	
	@RequestMapping("/verProducto")
	public String verRegistra() {
		return "crudProducto";
	}
	
	
	
	@RequestMapping("/listaProductoPorNombre")
	@ResponseBody
	public List<Producto> listaProductoPorNombre(String nombre_producto) {
		return service.listaProductoPorNombre(nombre_producto.trim());
	}
	
	
	//@RequestParam(name="foto1_producto", required = false) MultipartFile imageFile,
	@RequestMapping("/registraProducto")
	@ResponseBody
	public Map<String, Object> registra(Producto objProducto) {
		
		Map<String, Object> salida = new HashMap<String, Object>();
		Producto objSalida = null;
		
		
		try {
			
			objSalida = service.insertaProducto(objProducto);
			
			if(objSalida == null) {
				salida.put("MENSAJE", "El registro no pudo ser completado");
			} else {
				salida.put("MENSAJE", "¡Registro exitoso!");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} finally {
			List<Producto> lista = service.listaProducto();
			salida.put("lista", lista);
		}
		return salida;
		
	}
	
	@RequestMapping("/actualizaProducto")
	@ResponseBody
	public Map<String, Object> actualiza(Producto objProducto) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		try {
			Optional<Producto> option = service.obtienePorId(objProducto.getCodigo_producto());
			
			if(option.isPresent()) {
				Producto objSalida = service.insertaProducto(objProducto);
				
				if(objSalida == null) {
					salida.put("MENSAJE", "La actualización no pudo ser completada");
					
				} else {
					salida.put("MENSAJE", "¡Actualización exitosa!");
				}
			} else {
				salida.put("MENSAJE", "Error, el producto no existe");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "La actualización no pudo ser completada");
		} finally {
			List<Producto> lista = service.listaProducto();
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	@RequestMapping("/eliminaProducto")
	@ResponseBody
	public Map<String, Object> elimina(Integer codigo_producto) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Producto> option = service.obtienePorId(codigo_producto);
		
		try {
			if(option.isPresent()) {
				service.eliminaProducto(codigo_producto);
				salida.put("MENSAJE", "¡Eliminación exitosa!");
			} else {
				salida.put("MENSAJE", "Error, el producto no existe");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error, la mascota no pudo ser eliminada");
		} finally {
			List<Producto> lista = service.listaProducto();
			salida.put("lista", lista);
		}
		
		return salida;
	}

	
}
