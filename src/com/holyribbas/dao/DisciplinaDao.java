package com.holyribbas.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import com.holyribbas.model.Curso;
import com.holyribbas.model.Disciplina;
import com.holyribbas.model.IAbstractEntity;

public class DisciplinaDao extends AbstractDao {

	public DisciplinaDao(EntityManager manager) {
		super(manager);
	}

	@Override
	public Class<IAbstractEntity> entityClass() {
		return IAbstractEntity.class;
	}

	@Override
	public List<IAbstractEntity> listar() {
		List<IAbstractEntity> lista = new ArrayList<IAbstractEntity>();

		Curso curso1 = new Curso(1, "Ciências da computação", null, null, null, null);
		Curso curso2 = new Curso(1, "Ciências da computação", null, null, null, null);
		Curso curso3 = new Curso(1, "Ciências da computação", null, null, null, null);
		
		lista.add(new Disciplina(1, "Banco de dados", "", curso1, null));
		lista.add(new Disciplina(2, "Programação para Web", "", curso2, null));
		lista.add(new Disciplina(3, "Engenharia de Software", "", curso3, null));
		
		return lista;
	}
}
