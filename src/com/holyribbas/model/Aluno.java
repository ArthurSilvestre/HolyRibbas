package com.holyribbas.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "ALUNO")
public class Aluno extends Usuario implements IAbstractEntity{
	@Temporal(TemporalType.DATE)	
	@Column(name = "DATA_VINCULO")
	private Date dataVinculo;

	@ManyToOne
	private Curso curso;
	
	@OneToMany(mappedBy="aluno")
	private List<Desempenho> desempenhos;

	public Aluno(){}
	
	public Aluno(long id, String login, String senha, String nome, String matricula, Date dataVinculo, Endereco endereco, Curso curso, List<Desempenho> desempenhos) {
		super(id, login, senha, nome, matricula, endereco);
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

	@Override
	public boolean hasValidId() {
		return false;
	}

}
