package com.veterinaria.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.DetalleUsuarioRol;
import com.veterinaria.entity.DetalleUsuarioRolPK;
import com.veterinaria.entity.Rol;
import com.veterinaria.entity.Usuario;
import com.veterinaria.service.DetalleUsuarioRolService;
import com.veterinaria.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired
	private DetalleUsuarioRolService detalleUsuarioRolService;
	
	/* Nueva cuenta de tipo Cliente */
	
	@RequestMapping("/nuevaCuenta")
	public String verRegistraCliente() {
		return "registraCliente";
	}
	
	@RequestMapping("/registraCliente")
	@ResponseBody
	public Map<String, Object> registra(Usuario objUsuario) {
		
		Map<String, Object> salida = new HashMap<>();
		
		List<Usuario> verificarEmail = usuarioService.obtenerUsuarioPorEmail(objUsuario.getEmail_usuario());
		
		if(verificarEmail.size() < 1) {
			objUsuario.setCodigo_visibilidad(1); // Visibilidad 1 = Visible
			Usuario objSalida = usuarioService.insertaUsuario(objUsuario);
			
			if (objSalida == null) {
				salida.put("MENSAJE", "El registro de cliente no pudo ser completado");
			} else {
				DetalleUsuarioRolPK objRolUsuarioPK = new DetalleUsuarioRolPK();
				objRolUsuarioPK.setCodigo_rol_usuario(2); // Rol 2 = Cliente
				objRolUsuarioPK.setCodigo_usuario(objSalida.getCodigo_usuario());
				
				DetalleUsuarioRol objRolUsuario = new DetalleUsuarioRol();
				objRolUsuario.setObjDetalleUsuarioRolPK(objRolUsuarioPK);
				
				DetalleUsuarioRol objDetalleSalida = detalleUsuarioRolService.insertaUsuarioRol(objRolUsuario);
				
				if(objDetalleSalida == null) {
					usuarioService.eliminaUsuario(objSalida.getCodigo_usuario());
					salida.put("MENSAJE", "La cuenta no pudo ser creada");	
				} else {
					salida.put("MENSAJE", "¡Registro exitoso!");
				}
			}
		} else {
			salida.put("MENSAJE", "El email ya se encuentra en uso");
			salida.put("VALIDACION", "no-reset");
		}
		
		return salida;

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
	
	@RequestMapping("/listaUsuarioPorRol")
	@ResponseBody
	public List<Usuario> listaUsuarioPorRol(Integer codigo_rol_usuario) {
		return usuarioService.listaUsuarioPorRol(codigo_rol_usuario);
	}
	
	@RequestMapping("listaUsuarioPorNombreYRol")
	@ResponseBody
	public List<Usuario> listaUsuarioPorNombreYRol(String nombre_usuario, Integer codigo_rol_usuario) {
		return usuarioService.listaUsuarioPorNombreYRol(nombre_usuario.trim(), codigo_rol_usuario);
	}
	
	@RequestMapping("/registraUsuario")
	@ResponseBody
	public Map<String, Object> register(Usuario objUsuario, Integer codigo_rol_usuario) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Usuario objSalida = null;
		
		try {
			
			List<Usuario> verificarEmail = usuarioService.obtenerUsuarioPorEmail(objUsuario.getEmail_usuario());
			
			if(verificarEmail.size() < 1) {
				objSalida = usuarioService.insertaUsuario(objUsuario);
				
				if (objSalida == null) {
					salida.put("MENSAJE", "El registro no pudo ser completado");
				} else {
					
					try {
						DetalleUsuarioRolPK objRolUsuarioPK = new DetalleUsuarioRolPK();
						objRolUsuarioPK.setCodigo_rol_usuario(codigo_rol_usuario);
						objRolUsuarioPK.setCodigo_usuario(objSalida.getCodigo_usuario());
						
						DetalleUsuarioRol objRolUsuario = new DetalleUsuarioRol();
						objRolUsuario.setObjDetalleUsuarioRolPK(objRolUsuarioPK);
						
						DetalleUsuarioRol objDetalleSalida = detalleUsuarioRolService.insertaUsuarioRol(objRolUsuario);

						if(objDetalleSalida == null) {
							usuarioService.eliminaUsuario(objSalida.getCodigo_usuario());
							salida.put("MENSAJE", "La cuenta no pudo ser creada");	
						} else {
							salida.put("MENSAJE", "¡Registro exitoso!");
						}
					} catch (Exception e) {
						salida.put("MENSAJE", "El registro no pudo ser completado");
					}
				}
			} else {
				salida.put("MENSAJE", "El email ya se encuentra en uso");
				salida.put("VALIDACION", "no-reset");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} finally {
			List<Usuario> lista = usuarioService.listaUsuarioPorNombre("");
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	@RequestMapping("/actualizaUsuario")
	@ResponseBody
	public Map<String, Object> actualiza(Usuario objUsuario, Integer codigo_rol_usuario) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		try {
			Optional<Usuario> option = usuarioService.obtieneUsuarioPorId(objUsuario.getCodigo_usuario());
			
			if(option.isPresent()) {
				Usuario objSalida = usuarioService.insertaUsuario(objUsuario);
				
				if(objSalida == null) {
					salida.put("MENSAJE", "La actualización no pudo ser completada");
				} else {
					
					try {
						DetalleUsuarioRolPK objRolUsuarioPK = new DetalleUsuarioRolPK();
						objRolUsuarioPK.setCodigo_rol_usuario(codigo_rol_usuario);
						objRolUsuarioPK.setCodigo_usuario(objSalida.getCodigo_usuario());
						
						DetalleUsuarioRol objRolUsuario = new DetalleUsuarioRol();
						objRolUsuario.setObjDetalleUsuarioRolPK(objRolUsuarioPK);
						
						DetalleUsuarioRol objDetalleSalida = detalleUsuarioRolService.insertaUsuarioRol(objRolUsuario);

						if(objDetalleSalida == null) {
							usuarioService.eliminaUsuario(objSalida.getCodigo_usuario());
							salida.put("MENSAJE", "La cuenta no pudo ser creada");	
						} else {
							salida.put("MENSAJE", "¡Registro exitoso!");
						}
					} catch (Exception e) {
						salida.put("MENSAJE", "La actualización no pudo ser completada");
					}
					
					
					salida.put("MENSAJE", "¡Actualización exitosa!");
				}
			} else {
				salida.put("MENSAJE", "Error, el usuario no existe");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "La actualización no pudo ser completada");
		} finally {
			List<Usuario> lista = usuarioService.listaUsuarioPorNombre("");
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	@RequestMapping("/actualizaVisibilidadUsuario")
	@ResponseBody
	public Map<String,Object> actualizaVisibilidadUsuario(Integer codigo_usuario, Integer codigo_visibilidad) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Usuario> option = usuarioService.obtieneUsuarioPorId(codigo_usuario);
		
		try {
			if(option.isPresent()) {
				option.ifPresent((Usuario result) -> {
					result.setCodigo_visibilidad(codigo_visibilidad);
					Usuario usuarioSalida = usuarioService.insertaUsuario(result);
					
					if(usuarioSalida != null) {
						salida.put("MENSAJE", "El estado del usuario ha sido modificado");
					}
					
				});
				
			} else {
				salida.put("MENSAJE", "Error, el usuario no existe");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error, la visibilidad no pudo ser actualizada");
		} finally {
			List<Usuario> lista = usuarioService.listaUsuarioPorNombre("");
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
				try {
					List<Rol> roles = usuarioService.obtenerRolesDeUsuario(codigo_usuario);
					DetalleUsuarioRolPK objRolUsuarioPK = new DetalleUsuarioRolPK();
					objRolUsuarioPK.setCodigo_rol_usuario(roles.get(0).getCodigo_rol_usuario());
					objRolUsuarioPK.setCodigo_usuario(codigo_usuario);
					
					DetalleUsuarioRol objRolUsuario = new DetalleUsuarioRol();
					objRolUsuario.setObjDetalleUsuarioRolPK(objRolUsuarioPK);
										
					detalleUsuarioRolService.eliminaUsuarioRol(objRolUsuario);
					
					try {
						usuarioService.eliminaUsuario(codigo_usuario);
					} catch (Exception e) {
						e.printStackTrace();
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
					salida.put("MENSAJE", "Error, el usuario no pudo ser eliminado");
				}
				
				salida.put("MENSAJE", "¡Eliminación exitosa!");
			} else {
				salida.put("MENSAJE", "Error, el usuario no existe");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error, el usuario no pudo ser eliminado");
		} finally {
			List<Usuario> lista = usuarioService.listaUsuarioPorNombre("");
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
}
