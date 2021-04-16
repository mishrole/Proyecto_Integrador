package com.veterinaria.service;

import java.util.List;

import com.veterinaria.entity.Rol;

public interface RolService {
	public abstract List<Rol> listaRol();
	public abstract List<Rol> listaRolPorUsuario(Integer codigo_usuario);
}
