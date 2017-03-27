package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.Disciplina;

public class DisciplinaDao extends AbstractDao {

	public DisciplinaDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<Disciplina> entityClass() {
		return Disciplina.class;
	}

	@Override
	public String getClassName() {
		return "DISCIPLINA";
	}
	
}
