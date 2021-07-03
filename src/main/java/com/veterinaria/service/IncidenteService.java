package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import com.veterinaria.entity.Incidente;

public interface IncidenteService {
	
	public abstract List<Incidente> listaIncidente();
	public abstract List<Incidente> listaIncidentePorCodigo(Integer codigo_incidente);
	public abstract Incidente insertaIncidente(Incidente objIncidente);
	public abstract List<Incidente> listaIncidentePorUsuario(Integer codigo_incidente);
	public abstract Optional<Incidente> obtienePorId(Integer codigo_incidente);

}
