package com.veterinaria.service;
import com.veterinaria.entity.Usuario;
import java.util.List;

public interface UsuarioService {
	
	public abstract Usuario insertaUsuario(Usuario objUsuario);
	public abstract List<Usuario> listausuarioPorEmailYContrasena(String email_usuario, String contrasena_usuario);
}
