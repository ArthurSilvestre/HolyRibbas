package com.holyribbas.model;

import java.util.List;

public class Professor extends Usuario{
	private String areaAtuacao;
	private String titulacao;
	private List<Curso> cursos;
	private List<Turma> turmas;
	
	public Professor(String login, String senha, String nome, String matricula, String areaAtuacao, String titulacao, Endereco endereco, List<Curso> cursos, List<Turma> turmas) {
		super(login, senha, nome, matricula, endereco);
		this.areaAtuacao = areaAtuacao;
		this.titulacao = titulacao;
		this.cursos = cursos;
		this.turmas = turmas;
	}

	public String getAreaAtuacao() {
		return areaAtuacao;
	}

	public void setAreaAtuacao(String areaAtuacao) {
		this.areaAtuacao = areaAtuacao;
	}

	public String getTitulacao() {
		return titulacao;
	}

	public void setTitulacao(String titulacao) {
		this.titulacao = titulacao;
	}

	public List<Curso> getCursos() {
		return cursos;
	}

	public void setCursos(List<Curso> cursos) {
		this.cursos = cursos;
	}

	public List<Turma> getTurmas() {
		return turmas;
	}

	public void setTurmas(List<Turma> turmas) {
		this.turmas = turmas;
	}
	
}
