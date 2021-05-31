package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.Boleta;



public interface BoletaRepository extends JpaRepository<Boleta, Integer> {

	//@Query("Select b from Boleta b, Usuario u, TipoServicio t where b.usuario.codigo_usuario = u.codigo_usuario and b.tipoboleta.codigo_tipo_boleta = t.codigo_tipo_boleta and b.codigo_boleta like :param_boleta")
	//public abstract List<Boleta> listaCitaPorCodigo(@Param("param_boleta") Integer codigo_boleta);
	
	
}
