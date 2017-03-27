package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.Turma;

public class TurmaDao extends AbstractDao {

	public TurmaDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<Turma> entityClass() {
		return Turma.class;
	}

	@Override
	public String getClassName() {
		return "TURMA";
	}
	
}
