package com.holyribbas.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "NOTA")
public class Nota implements IAbstractEntity{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID_NOTA")
	private int id;
	
	private int unidade;
	private float nota;
	private int peso;

	@ManyToOne
	private Desempenho desempenho;
	
	public Nota(){}
	
	public Nota(int id, int unidade, float nota, int peso, Desempenho desempenho) {
		this.id = id;
		this.unidade = unidade;
		this.nota = nota;
		this.peso = peso;
		this.desempenho = desempenho;
	}

	protected int getUnidade() {
		return unidade;
	}

	protected void setUnidade(int unidade) {
		this.unidade = unidade;
	}

	protected float getNota() {
		return nota;
	}

	protected void setNota(float nota) {
		this.nota = nota;
	}

	protected int getPeso() {
		return peso;
	}

	protected void setPeso(int peso) {
		this.peso = peso;
	}

	public Desempenho getDesempenho() {
		return desempenho;
	}

	public void setDesempenho(Desempenho desempenho) {
		this.desempenho = desempenho;
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
