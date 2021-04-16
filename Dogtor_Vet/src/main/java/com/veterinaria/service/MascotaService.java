package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import com.veterinaria.entity.Mascota;

public interface MascotaService {
	public abstract List<Mascota> listaMascota();
	public abstract List<Mascota> listaMascotaPorNombre(String nombre_mascota);
	public abstract Mascota insertaMascota(Mascota objMascota);
	public abstract void eliminaMascota(Integer codigo_mascota);
	public abstract Optional<Mascota> obtienePorId(Integer codigo_mascota);
}
