package com.holyribbas.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import com.holyribbas.model.Curso;
import com.holyribbas.model.Disciplina;
import com.holyribbas.model.IAbstractEntity;
import com.holyribbas.model.Professor;
import com.holyribbas.model.Turma;

public class TurmaDao extends AbstractDao {

	public TurmaDao(EntityManager manager) {
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
		Curso curso2 = new Curso(2, "Sistemas para Internet", null, null, null, null);
		Curso curso3 = new Curso(3, "Gestão de Tecnologia", null, null, null, null);
		
		Disciplina disciplina1 = new Disciplina(1, "Banco de dados", "", curso1, null);
		Disciplina disciplina2 = new Disciplina(2, "Programação para Web", "", curso2, null);
		Disciplina disciplina3 = new Disciplina(3, "Engenharia de Software", "", curso3, null);
		
		Professor professor1 = new Professor(1,"Login", "Senha", "Francisco Parfírio", "0", "", "", null, null, null);
		Professor professor2 = new Professor(2,"Login", "Senha", "Eduardo Ribas", "0", "", "", null, null, null);
		Professor professor3 = new Professor(3,"Login", "Senha", "Humberto Rocha", "0", "", "", null, null, null);
		
		lista.add(new Turma(1, 201302, 2013, disciplina1, professor1, null));
		lista.add(new Turma(2, 201302, 2013, disciplina2, professor2, null));
		lista.add(new Turma(3, 201302, 2013, disciplina3, professor3, null));
		
		return lista;
	}
	
}
