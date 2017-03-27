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
@Table(name = "DISCIPLINA")
public class Disciplina implements IAbstractEntity{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID_DISCIPLINA")
	private int id;
	private String nome;
	private String area;

	@ManyToOne
	private Curso curso;
	
	@OneToMany(mappedBy = "disciplina")
	private List<Turma> turmas;
	
	public Disciplina(){}
	
	public Disciplina(int id, String nome, String area, Curso curso, List<Turma> turmas) {
		this.id = id;
		this.nome = nome;
		this.area = area;
		this.curso = curso;
		this.turmas = turmas;
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

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
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

	@Override
	public boolean hasValidId() {
		// TODO Auto-generated method stub
		return false;
	}
	
}
