package com.holyribbas.model;

public class Nota {
	private int unidade;
	private float nota;
	private int peso;
	private Desempenho desempenho;
	
	public Nota(int unidade, float nota, int peso, Desempenho desempenho) {
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

}
