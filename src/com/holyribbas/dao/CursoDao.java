package com.holyribbas.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import com.holyribbas.model.Curso;
import com.holyribbas.model.IAbstractEntity;

public class CursoDao extends AbstractDao {

	public CursoDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<IAbstractEntity> entityClass() {
		return IAbstractEntity.class;
	}

	@Override
	public List<IAbstractEntity> listar() {
		List<IAbstractEntity> lista = new ArrayList<IAbstractEntity>();
		
		lista.add(new Curso(1, "Nome 1", "Tipo 1", null, null, null));
		lista.add(new Curso(2, "Nome 2", "Tipo 2", null, null, null));
		lista.add(new Curso(3, "Nome 3", "Tipo 3", null, null, null));
		lista.add(new Curso(4, "Nome 4", "Tipo 4", null, null, null));
		lista.add(new Curso(6, "Nome 6", "Tipo 6", null, null, null));
		
		return lista;
	}
}
