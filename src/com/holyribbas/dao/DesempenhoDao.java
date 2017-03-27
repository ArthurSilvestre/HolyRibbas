package com.holyribbas.dao;

import javax.persistence.EntityManager;

import com.holyribbas.model.Aluno;
import com.holyribbas.model.Desempenho;
import com.holyribbas.model.IAbstractEntity;

public class DesempenhoDao extends AbstractDao {

	public DesempenhoDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<Desempenho> entityClass() {
		return Desempenho.class;
	}

	@Override
	public String getClassName() {
		return "DESEMPENHO";
	}

}
