package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.Aluno;

public class AlunoDao extends AbstractDao {

	public AlunoDao(EntityManager entity) {
		super(entity);
	}

	@Override
	public Class<Aluno> entityClass() {
		return Aluno.class;
	}

	@Override
	public String getClassName() {
		return "ALUNO";
	}
	
}