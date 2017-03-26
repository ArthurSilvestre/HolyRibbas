package com.holyribbas.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import com.holyribbas.model.Aluno;
import com.holyribbas.model.Curso;
import com.holyribbas.model.IAbstractEntity;

public class AlunoDao extends AbstractDao {

	public AlunoDao(EntityManager entity) {
		super(entity);
	}

	@Override
	public Class<IAbstractEntity> entityClass() {
		return IAbstractEntity.class;
	}
	
	@Override
	public List<IAbstractEntity> listar() {
		List<IAbstractEntity> lista = new ArrayList<IAbstractEntity>();

		Curso curso1 = new Curso(1, "Ciências da computação", null, null, null, null);
		Curso curso2 = new Curso(2, "Sistemas para Internet", null, null, null, null);
		Curso curso3 = new Curso(3, "Gestão de Tecnologia", null, null, null, null);
		
		lista.add(new Aluno(1,"", "", "Gabriela Soates", "10032423", new Date(), null, curso1, null));
		lista.add(new Aluno(2,"", "", "Tereza Maria", "10065055", new Date(), null, curso2, null));
		lista.add(new Aluno(3,"", "", "Antonio Jose", "10029292", new Date(), null, curso3, null));
		
		return lista;
	}
}