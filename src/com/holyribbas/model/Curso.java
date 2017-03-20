package com.holyribbas.model;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class Curso {
	@Id
	private int id;
	private String nome;
	private String tipo;
	@OneToMany
	private List<Aluno> alunos;
	@ManyToMany
	private List<Professor> professores;
	@OneToMany
	private List<Disciplina> disciplinas; 
	
	public Curso(int id, String nome, String tipo, List<Aluno> alunos, List<Professor> professores, List<Disciplina> disciplinas) {
		this.id = id;
		this.nome = nome;
		this.tipo = tipo;
		this.alunos = alunos;
		this.professores = professores;
		this.disciplinas = disciplinas;
	}
	
	protected int getId() {
		return id;
	}
	protected void setId(int id) {
		this.id = id;
	}
	protected String getNome() {
		return nome;
	}
	protected void setNome(String nome) {
		this.nome = nome;
	}
	protected String getTipo() {
		return tipo;
	}
	protected void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public List<Aluno> getAlunos() {
		return alunos;
	}

	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}

	public List<Professor> getProfessores() {
		return professores;
	}

	public void setProfessores(List<Professor> professores) {
		this.professores = professores;
	}

	public List<Disciplina> getDisciplinas() {
		return disciplinas;
	}

	public void setDisciplinas(List<Disciplina> disciplinas) {
		this.disciplinas = disciplinas;
	}
}
