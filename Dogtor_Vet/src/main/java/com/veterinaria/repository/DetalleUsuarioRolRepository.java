package com.veterinaria.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.veterinaria.entity.DetalleUsuarioRol;
import com.veterinaria.entity.DetalleUsuarioRolPK;
import com.veterinaria.entity.Usuario;

public interface DetalleUsuarioRolRepository extends JpaRepository<DetalleUsuarioRol, Integer>{

}
