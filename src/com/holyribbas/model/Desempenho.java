package com.holyribbas.model;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Desempenho {
	@Id
	@ManyToOne
	private Turma turma;
	@ManyToOne
	private Aluno aluno;
	@OneToMany
	private List<Nota> notas;
	
	public Desempenho(Turma turma, Aluno aluno, List<Nota> notas) {
		super();
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
}
