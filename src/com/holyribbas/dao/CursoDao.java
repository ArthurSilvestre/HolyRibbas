package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.Curso;

public class CursoDao extends AbstractDao {

	public CursoDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<Curso> entityClass() {
		return Curso.class;
	}

	@Override
	public String getClassName() {
		return "CURSO";
	}

}
