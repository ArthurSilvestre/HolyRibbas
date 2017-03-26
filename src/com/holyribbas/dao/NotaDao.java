package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.IAbstractEntity;

public class NotaDao extends AbstractDao {

	public NotaDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<IAbstractEntity> entityClass() {
		return IAbstractEntity.class;
	}

}
