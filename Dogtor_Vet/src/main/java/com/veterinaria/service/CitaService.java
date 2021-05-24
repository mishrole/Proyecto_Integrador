package com.veterinaria.service;

import java.util.List;

import com.veterinaria.entity.Cita;

public interface CitaService {
	public abstract List<Cita> listaCita();
	public abstract List<Cita> listaCitaPorCodigo(Integer codigo_cita);
}
