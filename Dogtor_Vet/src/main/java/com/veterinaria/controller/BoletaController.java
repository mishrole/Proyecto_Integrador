package com.veterinaria.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.veterinaria.entity.Boleta;
import com.veterinaria.entity.Mensaje;
import com.veterinaria.entity.Producto;
import com.veterinaria.entity.ProductoHasBoleta;
import com.veterinaria.entity.ProductoHasBoletaPK;
import com.veterinaria.entity.Seleccion;
import com.veterinaria.entity.Usuario;
import com.veterinaria.service.BoletaService;
import com.veterinaria.service.ProductoService;
import com.veterinaria.service.UsuarioService;

@Controller
public class BoletaController {

	@Autowired
	private UsuarioService usuarioservice;
	
	@Autowired
	private ProductoService productoservice;
	
	@Autowired
	private BoletaService boletaService;
	
	//Se almacenan los productos seleccionados
	private List<Seleccion> seleccionados = new ArrayList<Seleccion>();
	
	
	@RequestMapping("/verBoleta")
	public String verBoleta() {
		return "CrudVenta";
	}
	
	@RequestMapping("/agregarSeleccion")
	@ResponseBody
	public List<Seleccion> agregar(Seleccion obj) {
		seleccionados.add(obj);
		return seleccionados;
	}
	
	@RequestMapping("/listaSeleccion")
	@ResponseBody
	public List<Seleccion> lista(){
		return seleccionados;
	}
	
	@RequestMapping("/eliminaSeleccion")
	@ResponseBody
	public List<Seleccion> eliminar(int codigo_producto) {
		for (Seleccion x : seleccionados) {
			if (x.getCodigo_producto() == codigo_producto) {
				seleccionados.remove(x);
				break;
			}
		}
		return seleccionados;
	}
	
	
	@RequestMapping("/registraBoleta")
	@ResponseBody
	public Mensaje registra(Usuario objCliente) {
		Usuario objUsuario = new Usuario();
		objUsuario.setCodigo_usuario(1);

		List<ProductoHasBoleta> detalles = new ArrayList<ProductoHasBoleta>();
		for (Seleccion x : seleccionados) {
			ProductoHasBoletaPK pk = new ProductoHasBoletaPK();
			pk.setCodigo_producto(x.getCodigo_producto());

			ProductoHasBoleta phb = new ProductoHasBoleta();
			phb.setCantidad(x.getCantidad());
			phb.setPrecio(x.getPrecio());
			phb.setProductoHasBoletaPK(pk);

			detalles.add(phb);
		}

		Boleta objBoleta = new Boleta();
		//objBoleta.setCliente(objCliente);
		objBoleta.setCliente(objUsuario);
		objBoleta.setDetallesBoleta(detalles);

		Boleta objIns = boletaService.insertaBoleta(objBoleta);
		String salida = "-1";

		if (objIns != null) {
			salida = "Se generó la boleta con código N° : " + objIns.getCodigo_boleta() + "<br><br>";
			salida += "Cliente: " + objIns.getCliente().getNombre_usuario() + "<br><br>";
			salida += "<table class=\"table\"><tr><td>Producto</td><td>Precio</td><td>Cantidad</td><td>Subtotal</td></tr>";
			double monto = 0;
			for (Seleccion x : seleccionados) {
				salida += "<tr><td>"  + x.getNombre() + "</td><td>" + x.getPrecio() + "</td><td>" + x.getCantidad()
						+ "</td><td>" + x.getTotalParcial() + "</td></tr>";
				monto += x.getCantidad() * x.getPrecio();
			}
			salida += "</table><br>";
			salida += "Monto a pagar : " + monto;

			seleccionados.clear();
		}

		Mensaje objMensaje = new Mensaje();
		objMensaje.setTexto(salida);

		return objMensaje;
	}
	
	@RequestMapping("/cargaCliente")
	@ResponseBody
	public List<Usuario> listaCliente(String filtro){
		//Los parametros de la paginacion
		//int page = 0;
		//int size = 5;
		//Pageable paginacion = PageRequest.of(page, size);
		return usuarioservice.listaUsuarioPorNombre(filtro+"%");
	}
	
	@RequestMapping("/cargaProducto")
	@ResponseBody
	public List<Producto> listaProducto(String nombre_producto) {
		//int page = 0;
		//int size = 5;
		//Pageable paginacion = PageRequest.of(page, size);
		return productoservice.listaProductoPorNombre(nombre_producto+"%");
	}
	
	
	
	
	
	
	
}
