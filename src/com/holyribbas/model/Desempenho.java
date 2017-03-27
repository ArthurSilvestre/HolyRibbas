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
@Table(name = "DESEMPENHO")
public class Desempenho implements IAbstractEntity{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID_DESEMPENHO")
	private int id;
	
	@ManyToOne
	private Turma turma;
	
	@ManyToOne
	private Aluno aluno;
	
	@OneToMany(mappedBy = "desempenho")
	private List<Nota> notas;
	
	public Desempenho(){
	}
	
	public Desempenho(int id, Turma turma, Aluno aluno, List<Nota> notas) {
		this.id = id;
		this.turma = turma;
		this.aluno = aluno;
		this.notas = notas;
	}

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

	public List<Nota> getNotas() {
		return notas;
	}

	public void setNotas(List<Nota> notas) {
		this.notas = notas;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public boolean hasValidId() {
		// TODO Auto-generated method stub
		return false;
	}
	
	
}
