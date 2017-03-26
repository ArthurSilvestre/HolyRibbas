package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.IAbstractEntity;

public class DesempenhoDao extends AbstractDao {

	public DesempenhoDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<IAbstractEntity> entityClass() {
		return IAbstractEntity.class;
	}

}
