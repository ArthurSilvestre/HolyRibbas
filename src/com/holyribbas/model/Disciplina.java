package com.holyribbas.model;

public class Disciplina {
	private int id;
	private String nome;
	private String area;

	public Disciplina(int id, String nome, String area) {
		
		this.id = id;
		this.nome = nome;
		this.area = area;
	}

	protected int getId() {
		return id;
	}

	protected void setId(int id) {
		this.id = id;
	}

	protected String getNome() {
		return nome;
	}

	protected void setNome(String nome) {
		this.nome = nome;
	}

	protected String getArea() {
		return area;
	}

	protected void setArea(String area) {
		this.area = area;
	}
}
