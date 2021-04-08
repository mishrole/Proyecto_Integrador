package com.veterinaria.service;
import com.veterinaria.entity.Usuario;
import java.util.List;

public interface UsuarioService {
	
	public abstract Usuario insertaUsuario(Usuario objUsuario);
	public List<Usuario> listaUsuarioPorEmailYContrasena(String filtro);

}
