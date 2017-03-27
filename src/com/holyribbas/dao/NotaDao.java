package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.Nota;

public class NotaDao extends AbstractDao {

	public NotaDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<Nota> entityClass() {
		return Nota.class;
	}

	@Override
	public String getClassName() {
		return "NOTA";
	}

}
