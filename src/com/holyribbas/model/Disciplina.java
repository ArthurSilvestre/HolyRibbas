package com.holyribbas.model;

import java.util.List;

public class Disciplina {
	private int id;
	private String nome;
	private String area;
	private Curso curso;
	private List<Turma> turmas;
	
	public Disciplina(int id, String nome, String area, Curso curso, List<Turma> turmas) {
		this.id = id;
		this.nome = nome;
		this.area = area;
		this.curso = curso;
		this.turmas = turmas;
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

	protected String getArea() {
		return area;
	}

	protected void setArea(String area) {
		this.area = area;
	}

	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}

	public List<Turma> getTurmas() {
		return turmas;
	}

	public void setTurmas(List<Turma> turmas) {
		this.turmas = turmas;
	}
	
}
