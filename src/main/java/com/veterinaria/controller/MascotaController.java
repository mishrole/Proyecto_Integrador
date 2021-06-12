package com.veterinaria.controller;

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
import com.veterinaria.entity.Mascota;
import com.veterinaria.service.MascotaService;

@Controller
public class MascotaController {
	
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
	private MascotaService service;

	private AmazonS3 s3Cliente;
	
	@PostMapping("/registraMascotaConFoto")
	public @ResponseBody Map<String, Object> registraMascotaConFoto(@RequestParam(value = "codigo_propietario") Integer codigoPropietario,
			@RequestParam(value = "nombre_mascota") String nombreMascota, @RequestParam(value = "codigo_especie_mascota") Integer especieMascota,
			@RequestParam(value = "codigo_raza_mascota") Integer razaMascota, @RequestParam(value = "codigo_color_mascota") Integer colorMascota,
			@RequestParam(value = "codigo_sexo_mascota") Integer sexoMascota, @RequestParam(value = "fecha_nacimiento_mascota") String nacimientoMascota,
			@RequestParam(value = "codigo_identificacion_mascota", required = false) String identificacionMascota,
			@RequestParam(value = "codigo_cartilla_sanitaria", required = false) String cartillaMascota,
			Model model, HttpServletRequest request, final @RequestParam(value = "foto_mascota") MultipartFile file) {
		
		Map<String, Object> salida = new HashMap<String, Object>();
		
		BasicAWSCredentials credentials = new BasicAWSCredentials(ACCESS_KEY, SECRET_KEY);
		s3Cliente = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials)).withRegion(REGION_NAME).build();
		
		try {
			String fileUrl = "";
			Mascota mascota = new Mascota();
			
			String fileName = new Date().getTime()+"-"+file.getOriginalFilename().replace(" ", "_");
			ObjectMetadata metadata = new ObjectMetadata();
			
			mascota.setCodigo_mascota(null);
			mascota.setCodigo_propietario(codigoPropietario);
			mascota.setNombre_mascota(nombreMascota);
			mascota.setCodigo_raza_mascota(razaMascota);
			mascota.setCodigo_especie_mascota(especieMascota);
			mascota.setCodigo_color_mascota(colorMascota);
			mascota.setCodigo_sexo_mascota(sexoMascota);
			mascota.setFecha_nacimiento_mascota(nacimientoMascota);
			mascota.setCodigo_identificacion_mascota(identificacionMascota);
			mascota.setCodigo_cartilla_sanitaria(cartillaMascota);
			mascota.setCodigo_visibilidad(1);
			
			if(file.getSize() > 0) {
				metadata.setContentLength(file.getSize());
				fileUrl = ENDPOINT_URL+"/"+BUCKET_NAME+"/"+fileName;
				s3Cliente.putObject(new PutObjectRequest(BUCKET_NAME, fileName, file.getInputStream(), metadata).withCannedAcl(CannedAccessControlList.PublicRead));	
			}

			mascota.setFoto_mascota(fileUrl);
			Mascota objSalida = service.insertaMascota(mascota);
			
			if(objSalida == null) {
				salida.put("MENSAJE", "El registro no pudo ser completado");
			} else {
				
				if(fileName == null || fileName.contains("..")) {
					salida.put("MENSAJE", "El registro se completó sin la imagen");
				} else {
					salida.put("MENSAJE", "¡Registro exitoso!");
				}

			}
	
		} catch (Exception e) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
			e.printStackTrace();
		}
		
		return salida;
		
	}
	
	@PostMapping("/actualizaMascotaConFoto")
	public @ResponseBody Map<String, Object> actualizaMascotaConFoto(@RequestParam(value = "codigo_mascota") Integer codigoMascota, @RequestParam(value = "codigo_propietario", required = false) Integer codigoPropietario,
			@RequestParam(value = "nombre_mascota") String nombreMascota, @RequestParam(value = "codigo_especie_mascota") Integer especieMascota,
			@RequestParam(value = "codigo_raza_mascota") Integer razaMascota, @RequestParam(value = "codigo_color_mascota") Integer colorMascota,
			@RequestParam(value = "codigo_sexo_mascota") Integer sexoMascota, @RequestParam(value = "fecha_nacimiento_mascota") String nacimientoMascota,
			@RequestParam(value = "codigo_identificacion_mascota", required = false) String identificacionMascota,
			@RequestParam(value = "codigo_cartilla_sanitaria", required = false) String cartillaMascota, @RequestParam(value = "codigo_visibilidad") Integer codigoVisibilidad,
			Model model, HttpServletRequest request, final @RequestParam(value = "foto_mascota") MultipartFile file) {
				
		Map<String, Object> salida = new HashMap<String, Object>();
		
		BasicAWSCredentials credentials = new BasicAWSCredentials(ACCESS_KEY, SECRET_KEY);
		s3Cliente = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials)).withRegion(REGION_NAME).build();
		
		try {
			Optional<Mascota> option = service.obtienePorId(codigoMascota);
			
			if(option.isPresent()) {
				option.ifPresent((Mascota result) -> {
					
					result.setNombre_mascota(nombreMascota);
					result.setFecha_nacimiento_mascota(nacimientoMascota);
					result.setCodigo_especie_mascota(especieMascota);
					result.setCodigo_raza_mascota(razaMascota);
					result.setCodigo_color_mascota(colorMascota);
					result.setCodigo_sexo_mascota(sexoMascota);
					result.setCodigo_visibilidad(codigoVisibilidad);
					result.setCodigo_cartilla_sanitaria(cartillaMascota);
					result.setCodigo_identificacion_mascota(identificacionMascota);
					
					try {
						String fileUrl = "";
						
						String fileName = new Date().getTime()+"-"+file.getOriginalFilename().replace(" ", "_");
						ObjectMetadata metadata = new ObjectMetadata();
						
						if(file.getSize() > 0) {
							metadata.setContentLength(file.getSize());
							fileUrl = ENDPOINT_URL+"/"+BUCKET_NAME+"/"+fileName;
							s3Cliente.putObject(new PutObjectRequest(BUCKET_NAME, fileName, file.getInputStream(), metadata).withCannedAcl(CannedAccessControlList.PublicRead));
						}
						
						result.setFoto_mascota(fileUrl);
						Mascota objSalida = service.insertaMascota(result);
						
						if(objSalida == null) {
							salida.put("MENSAJE", "El registro no pudo ser completado");
						} else {
							
							if(fileName == null || fileName.contains("..")) {
								salida.put("MENSAJE", "El registro se completó sin la imagen");
							} else {
								salida.put("MENSAJE", "¡Registro exitoso!");
							}

						}
						
					} catch (Exception e) {
						e.printStackTrace();
						salida.put("MENSAJE", "El archivo no es válido");
					}
				});

			} else {
				salida.put("MENSAJE", "Error, la mascota no existe");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "La actualización no pudo ser completada");
		}
		
		return salida;
		
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
	
	@RequestMapping("/listaMascotaPorPropietarioYNombre")
	@ResponseBody
	public List<Mascota> listaMascotaPorPropietarioYNombre(Integer codigo_propietario, String nombre_mascota) {
		return service.listaMascotaPorPropietarioYNombre(codigo_propietario, nombre_mascota);
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
			List<Mascota> lista = service.listaMascotaPorNombre("");
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
			List<Mascota> lista = service.listaMascotaPorNombre("");
			salida.put("lista", lista);
		}
		
		return salida;
	}

}
