package com.veterinaria.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.veterinaria.entity.Producto;
import com.veterinaria.service.ProductoService;

@Controller
public class ProductoController {
	
	@Value("${resourcesDir}")
	private String uploadFolder;
	
	@Value("${awsAccess}")
	private String ACCESS_KEY;
	
	@Value("${awsSecret}")
	private String SECRET_KEY;
	
	@Value("${awsRegion}")
	private String REGION_NAME;
	
	@Value("${awsBucket}")
	private String BUCKET_NAME;
	
	@Value("${awsEndpoint}")
	private String ENDPOINT_URL;
	
	@Autowired
	private ProductoService service;
	
	private AmazonS3 s3Cliente;
	
	@RequestMapping("/verProducto")
	public String verRegistra() {
		return "crudProducto";
	}
	
	@RequestMapping("/listaProductoPorCodigo")
	@ResponseBody
	public Optional<Producto> listaProductoPorCodigo(Integer codigo_producto) {
		return service.obtienePorId(codigo_producto);
	}

	@RequestMapping("/listaProductoPorNombre")
	@ResponseBody
	public List<Producto> listaProductoPorNombre(String nombre_producto) {
		return service.listaProductoPorNombre(nombre_producto.trim());
	}
	
	@PostMapping("/registraProductoConFoto")
	public @ResponseBody Map<String, Object> registraProductoConFoto(@RequestParam(value = "nombre_producto") String nombre_producto,
			@RequestParam(value = "descripcion_simple_producto") String descripcion_simple_producto, @RequestParam(value = "descripcion_html_producto") String descripcion_html_producto,
			@RequestParam(value = "precio_producto") Double precio_producto, @RequestParam(value = "stock_producto") Integer stock_producto,
			@RequestParam(value = "pedido_producto") Integer pedido_producto, @RequestParam(value = "serie_producto") String serie_producto,
			@RequestParam(value = "codigo_marca", required = false) Integer codigo_marca,
			@RequestParam(value = "codigo_categoria_producto", required = false) Integer codigo_categoria_producto,
			@RequestParam(value = "codigo_proveedor", required = false) Integer codigo_proveedor,
			Model model, HttpServletRequest request, final @RequestParam(value = "foto1_producto") MultipartFile file1,
			final @RequestParam(value = "foto2_producto") MultipartFile file2, final @RequestParam(value = "foto3_producto") MultipartFile file3) {

		Map<String, Object> salida = new HashMap<String, Object>();
		
		BasicAWSCredentials credentials = new BasicAWSCredentials(ACCESS_KEY, SECRET_KEY);
		s3Cliente = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials)).withRegion(REGION_NAME).build();

		try {
			
			String fileUrl1 = "";
			String fileUrl2 = "";
			String fileUrl3 = "";
			
			Producto producto = new Producto();
			
			String fileName1 = new Date().getTime()+"-"+file1.getOriginalFilename().replace(" ", "_");
			String fileName2 = new Date().getTime()+"-"+file2.getOriginalFilename().replace(" ", "_");
			String fileName3 = new Date().getTime()+"-"+file3.getOriginalFilename().replace(" ", "_");
			
			ObjectMetadata metadata1 = new ObjectMetadata();
			ObjectMetadata metadata2 = new ObjectMetadata();
			ObjectMetadata metadata3 = new ObjectMetadata();
			
			producto.setCodigo_producto(null);
			producto.setNombre_producto(nombre_producto);
			producto.setDescripcion_simple_producto(descripcion_simple_producto);
			producto.setDescripcion_html_producto(descripcion_html_producto);
			producto.setPrecio_producto(precio_producto);
			producto.setStock_producto(stock_producto);
			producto.setPedido_producto(pedido_producto);
			producto.setSerie_producto(serie_producto);
			producto.setCodigo_marca(codigo_marca);
			producto.setCodigo_categoria_producto(codigo_categoria_producto);
			producto.setCodigo_proveedor(codigo_proveedor);
			
			if(file1.getSize() > 0 && file2.getSize() > 0 && file3.getSize() > 0) {
				
				metadata1.setContentLength(file1.getSize());
				metadata2.setContentLength(file2.getSize());
				metadata3.setContentLength(file3.getSize());
				
				fileUrl1 = ENDPOINT_URL+"/"+BUCKET_NAME+"/"+fileName1;
				fileUrl2 = ENDPOINT_URL+"/"+BUCKET_NAME+"/"+fileName2;
				fileUrl3 = ENDPOINT_URL+"/"+BUCKET_NAME+"/"+fileName3;
				
				s3Cliente.putObject(new PutObjectRequest(BUCKET_NAME, fileName1, file1.getInputStream(), metadata1).withCannedAcl(CannedAccessControlList.PublicRead));
				s3Cliente.putObject(new PutObjectRequest(BUCKET_NAME, fileName2, file2.getInputStream(), metadata2).withCannedAcl(CannedAccessControlList.PublicRead));
				s3Cliente.putObject(new PutObjectRequest(BUCKET_NAME, fileName3, file3.getInputStream(), metadata3).withCannedAcl(CannedAccessControlList.PublicRead));
				
			}
			
			producto.setFoto1_producto(fileUrl1);
			producto.setFoto2_producto(fileUrl2);
			producto.setFoto3_producto(fileUrl3);
			
			Producto objSalida = service.insertaProducto(producto);

			if(objSalida == null) {
				salida.put("MENSAJE", "El registro no pudo ser completado");
			} else {
				salida.put("MENSAJE", "¡Registro exitoso!");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "El registro no pudo ser completado");
		}
	
		return salida;

	}

	@PostMapping("/actualizaProductoConFoto")
	public @ResponseBody Map<String, Object> actualizaProductoConFoto(@RequestParam(value = "codigo_producto") Integer codigo_producto,
			@RequestParam(value = "nombre_producto") String nombre_producto,
			@RequestParam(value = "descripcion_simple_producto") String descripcion_simple_producto, @RequestParam(value = "descripcion_html_producto") String descripcion_html_producto,
			@RequestParam(value = "precio_producto") Double precio_producto, @RequestParam(value = "stock_producto") Integer stock_producto,
			@RequestParam(value = "pedido_producto") Integer pedido_producto, @RequestParam(value = "serie_producto") String serie_producto,
			@RequestParam(value = "codigo_marca", required = false) Integer codigo_marca,
			@RequestParam(value = "codigo_categoria_producto", required = false) Integer codigo_categoria_producto,
			@RequestParam(value = "codigo_proveedor", required = false) Integer codigo_proveedor,
			Model model, HttpServletRequest request, final @RequestParam(value = "foto1_producto") MultipartFile file1,
			final @RequestParam(value = "foto2_producto") MultipartFile file2, final @RequestParam(value = "foto3_producto") MultipartFile file3) {

		Map<String, Object> salida = new HashMap<String, Object>();
		
		BasicAWSCredentials credentials = new BasicAWSCredentials(ACCESS_KEY, SECRET_KEY);
		s3Cliente = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials)).withRegion(REGION_NAME).build();

		try {
			Optional<Producto> option = service.obtienePorId(codigo_producto);
			
			if(option.isPresent()) {
				option.ifPresent((Producto result) -> {

					result.setNombre_producto(nombre_producto);
					result.setDescripcion_simple_producto(descripcion_simple_producto);
					result.setDescripcion_html_producto(descripcion_html_producto);
					result.setPrecio_producto(precio_producto);
					result.setStock_producto(stock_producto);
					result.setPedido_producto(pedido_producto);
					result.setSerie_producto(serie_producto);
					result.setCodigo_marca(codigo_marca);
					result.setCodigo_categoria_producto(codigo_categoria_producto);
					result.setCodigo_proveedor(codigo_proveedor);

					try {
						
						String fileUrl1 = "";
						String fileUrl2 = "";
						String fileUrl3 = "";
						
						String fileName1 = new Date().getTime()+"-"+file1.getOriginalFilename().replace(" ", "_");
						String fileName2 = new Date().getTime()+"-"+file2.getOriginalFilename().replace(" ", "_");
						String fileName3 = new Date().getTime()+"-"+file3.getOriginalFilename().replace(" ", "_");
						
						ObjectMetadata metadata1 = new ObjectMetadata();
						ObjectMetadata metadata2 = new ObjectMetadata();
						ObjectMetadata metadata3 = new ObjectMetadata();
						

						if(file1.getSize() > 0 && file2.getSize() > 0 && file3.getSize() > 0) {
							
							metadata1.setContentLength(file1.getSize());
							metadata2.setContentLength(file2.getSize());
							metadata3.setContentLength(file3.getSize());
							
							fileUrl1 = ENDPOINT_URL+"/"+BUCKET_NAME+"/"+fileName1;
							fileUrl2 = ENDPOINT_URL+"/"+BUCKET_NAME+"/"+fileName2;
							fileUrl3 = ENDPOINT_URL+"/"+BUCKET_NAME+"/"+fileName3;
							
							s3Cliente.putObject(new PutObjectRequest(BUCKET_NAME, fileName1, file1.getInputStream(), metadata1).withCannedAcl(CannedAccessControlList.PublicRead));
							s3Cliente.putObject(new PutObjectRequest(BUCKET_NAME, fileName2, file2.getInputStream(), metadata2).withCannedAcl(CannedAccessControlList.PublicRead));
							s3Cliente.putObject(new PutObjectRequest(BUCKET_NAME, fileName3, file3.getInputStream(), metadata3).withCannedAcl(CannedAccessControlList.PublicRead));
							
						}
						
						result.setFoto1_producto(fileUrl1);					
						result.setFoto2_producto(fileUrl2);			
						result.setFoto3_producto(fileUrl3);
						
						Producto objSalida = service.insertaProducto(result);
						
						if(objSalida == null) {
							salida.put("MENSAJE", "La actualización no pudo ser completada");
						} else {
							salida.put("MENSAJE", "¡Actualización exitosa!");
						}

					} catch (Exception e) {
						e.printStackTrace();
						salida.put("MENSAJE", "Alguno de los archivos no pudo ser procesado");
					}
				});

			} else {
				salida.put("MENSAJE", "Error, el producto no existe");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "La actualización no pudo ser completada");
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
