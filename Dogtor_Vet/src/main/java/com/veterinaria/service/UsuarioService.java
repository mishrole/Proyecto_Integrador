package com.veterinaria.service;
import com.veterinaria.entity.Usuario;
import java.util.List;
import java.util.Optional;

public interface UsuarioService {
	public abstract List<Usuario> listaUsuario();
	public abstract void eliminaUsuario(Integer codigo_usuario);
	public abstract Optional<Usuario> obtieneUsuarioPorId(Integer codigo_usuario);
	public abstract Usuario insertaUsuario(Usuario objUsuario);
	public abstract List<Usuario> listausuarioPorEmailYContrasena(String email_usuario, String contrasena_usuario);
	public abstract List<Usuario> listaUsuarioPorNombre(String nombre_usuario);
}
