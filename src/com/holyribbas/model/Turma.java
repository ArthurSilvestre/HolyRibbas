package com.holyribbas.model;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Turma {
	@Id
	private String id;
	private int semestre;
	private int ano;
	@ManyToOne
	private Disciplina disciplina;
	@ManyToOne
	private Professor professor;
	@OneToMany
	private List<Desempenho> desempenhos;
	
	public Turma(String id, int semestre, int ano, Disciplina disciplina, Professor professor, List<Desempenho> desempenhos) {
		this.id = id;
		this.semestre = semestre;
		this.ano = ano;
		this.disciplina = disciplina;
		this.professor = professor;
		this.desempenhos = desempenhos;
	}

	protected String getId() {
		return id;
	}

	protected void setId(String id) {
		this.id = id;
	}

	protected int getSemestre() {
		return semestre;
	}

	protected void setSemestre(int semestre) {
		this.semestre = semestre;
	}

	protected int getAno() {
		return ano;
	}

	protected void setAno(int ano) {
		this.ano = ano;
	}

	public Disciplina getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(Disciplina disciplina) {
		this.disciplina = disciplina;
	}

	public Professor getProfessor() {
		return professor;
	}

	public void setProfessor(Professor professor) {
		this.professor = professor;
	}

	public List<Desempenho> getDesempenhos() {
		return desempenhos;
	}

	public void setDesempenhos(List<Desempenho> desempenhos) {
		this.desempenhos = desempenhos;
	}
	
}
