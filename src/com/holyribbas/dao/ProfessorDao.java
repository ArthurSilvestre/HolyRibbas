package com.holyribbas.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import com.holyribbas.model.IAbstractEntity;
import com.holyribbas.model.Professor;

public class ProfessorDao extends AbstractDao {

	public ProfessorDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<IAbstractEntity> entityClass() {
		return IAbstractEntity.class;
	}

	@Override
	public List<IAbstractEntity> listar() {
		List<IAbstractEntity> lista = new ArrayList<IAbstractEntity>();
		
		lista.add(new Professor(1,"Login", "Senha", "Francisco Parfírio", "0", "", "", null, null, null));
		lista.add(new Professor(2,"Login", "Senha", "Eduardo Ribas", "0", "", "", null, null, null));
		lista.add(new Professor(3,"Login", "Senha", "Humberto Rocha", "0", "", "", null, null, null));
		
		return lista;
	}
	
}
