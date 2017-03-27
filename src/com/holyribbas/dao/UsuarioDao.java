package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.Usuario;

public class UsuarioDao extends AbstractDao {

	public UsuarioDao(EntityManager entity) {
		super(entity);
	}

	@Override
	public Class<Usuario> entityClass() {
		return Usuario.class;
	}

	@Override
	public String getClassName() {
		return "USUARIO";
	}
}
