package com.holyribbas.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Aluno extends Usuario{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_Aluno")
	private Date dataVinculo;
	@ManyToOne
	private Curso curso;
	@OneToMany
	private List<Desempenho> desempenhos;
	
	public Aluno(String login, String senha, String nome, String matricula, Date dataVinculo, Endereco endereco, Curso curso, List<Desempenho> desempenhos) {
		super(login, senha, nome, matricula, endereco);
		this.dataVinculo = dataVinculo;
		this.curso = curso;
		this.desempenhos = desempenhos;
	}

	public Date getDataVinculo() {
		return dataVinculo;
	}

	public void setDataVinculo(Date dataVinculo) {
		this.dataVinculo = dataVinculo;
	}

	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}

	public List<Desempenho> getDesempenhos() {
		return desempenhos;
	}

	public void setDesempenhos(List<Desempenho> desempenhos) {
		this.desempenhos = desempenhos;
	}

}
