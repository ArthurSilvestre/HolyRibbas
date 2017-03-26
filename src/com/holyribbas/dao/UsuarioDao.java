package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.IAbstractEntity;

public class UsuarioDao extends AbstractDao {

	public UsuarioDao(EntityManager entity) {
		super(entity);
	}

	@Override
	public Class<IAbstractEntity> entityClass() {
		return IAbstractEntity.class;
	}
}
