package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.Professor;

public class ProfessorDao extends AbstractDao {

	public ProfessorDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<Professor> entityClass() {
		return Professor.class;
	}

	@Override
	public String getClassName() {
		return "PROFESSOR";
	}
}
