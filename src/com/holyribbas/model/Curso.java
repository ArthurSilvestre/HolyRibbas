package com.holyribbas.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CURSO")
public class Curso implements IAbstractEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID_CURSO")
	private int id;
	
	@Column(name = "NOME")
	private String nome;
	
	@Column(name = "TIPO")
	private String tipo;

	@OneToMany
	private List<Aluno> alunos;
	
	@ManyToMany
	private List<Professor> professores;
	
	@OneToMany
	private List<Disciplina> disciplinas; 
	
	public Curso(){}
	
	public Curso(int id, String nome, String tipo, List<Aluno> alunos, List<Professor> professores, List<Disciplina> disciplinas) {
		this.id = id;
		this.nome = nome;
		this.tipo = tipo;
		this.alunos = alunos;
		this.professores = professores;
		this.disciplinas = disciplinas;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
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

	@Override
	public boolean hasValidId() {
		// TODO Auto-generated method stub
		return false;
	}
	
}
