package com.holyribbas.teste;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import com.holyribbas.dao.AlunoDao;
import com.holyribbas.model.Aluno;
import com.holyribbas.model.Curso;
import com.holyribbas.model.Desempenho;
import com.holyribbas.model.Endereco;
import com.holyribbas.model.IAbstractEntity;
import com.holyribbas.util.EntityManagerUtil;

public class ApplicationTeste {

	public static void main(String[] args) {
		EntityManager entityManager = EntityManagerUtil.getEntityManager();
		
		Endereco endereco = new Endereco();
		Curso curso = new Curso();
		List<Desempenho> desempenhos = new ArrayList<Desempenho>();
		
		IAbstractEntity aluno = new Aluno(1,"arthur", "123456", "arthur", "1420000373", new Date(), endereco, curso, desempenhos);
		
		AlunoDao alunoDao = new AlunoDao(entityManager);
		
		alunoDao.inserir(aluno);
		System.out.println("Finish");
	}

}
