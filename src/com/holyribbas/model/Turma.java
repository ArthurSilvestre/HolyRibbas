package com.holyribbas.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "TURMA")
public class Turma implements IAbstractEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "ID_TURMA")
	private long id;
	private int semestre;
	private int ano;
	@ManyToOne
	private Disciplina disciplina;
	@ManyToOne
	private Professor professor;
	@OneToMany(mappedBy = "turma")
	private List<Desempenho> desempenhos;
	
	public Turma(){}
	
	public Turma(long id, int semestre, int ano, Disciplina disciplina, Professor professor, List<Desempenho> desempenhos) {
		this.id = id;
		this.semestre = semestre;
		this.ano = ano;
		this.disciplina = disciplina;
		this.professor = professor;
		this.desempenhos = desempenhos;
	}

	public Long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getSemestre() {
		return semestre;
	}

	public void setSemestre(int semestre) {
		this.semestre = semestre;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
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

	@Override
	public void setId(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean hasValidId() {
		// TODO Auto-generated method stub
		return false;
	}
	
}
