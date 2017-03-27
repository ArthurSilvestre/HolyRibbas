package com.holyribbas.teste;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import com.holyribbas.dao.DisciplinaDao;
import com.holyribbas.dao.ProfessorDao;
import com.holyribbas.model.Aluno;
import com.holyribbas.model.Curso;
import com.holyribbas.model.Desempenho;
import com.holyribbas.model.Disciplina;
import com.holyribbas.model.Endereco;
import com.holyribbas.model.Professor;
import com.holyribbas.model.Turma;
import com.holyribbas.util.EntityManagerUtil;

public class ApplicationTeste {
	private static EntityManager entityManager;
	
	public static void main(String[] args) {
		entityManager = EntityManagerUtil.getEntityManager();

		List<Turma> listaTurmas = new ArrayList<Turma>();
		List<Curso> cursos = new ArrayList<Curso>();
		//List<Aluno> alunos = new ArrayList<Aluno>();
		//List<Professor> professores = new ArrayList<Professor>();
		//List<Disciplina> disciplinas = new ArrayList<Disciplina>();
		
		Endereco endereco = new Endereco("cep", "bairro", "numero", "complemento", "cidade", "estado"); 
		//Curso curso = new Curso(1, "Ciencias da computacao", "Tecnologia", alunos, professores, disciplinas);
		Professor professor = new Professor("Login", "Senha", "Nome", "Matricula", "Tecnologia", "Mestrado", endereco, cursos, listaTurmas);

		ProfessorDao professorDao = new ProfessorDao(entityManager);
		
		professorDao.inserir(professor);
		
		System.out.println("Finish");
	}
}
