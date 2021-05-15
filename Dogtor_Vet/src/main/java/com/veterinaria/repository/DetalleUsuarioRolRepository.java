package com.veterinaria.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.veterinaria.entity.DetalleUsuarioRol;
import com.veterinaria.entity.DetalleUsuarioRolPK;

public interface DetalleUsuarioRolRepository extends JpaRepository<DetalleUsuarioRol, Integer>{

}
