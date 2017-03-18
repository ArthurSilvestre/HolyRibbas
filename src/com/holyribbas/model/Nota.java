package com.holyribbas.model;

public class Nota {
	private int unidade;
	private float nota;
	private int peso;
	
	public Nota(int unidade, float nota, int peso) {
		
		this.unidade = unidade;
		this.nota = nota;
		this.peso = peso;
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
	

}
