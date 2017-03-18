package com.holyribbas.model;

public class Curso {
	private int id;
	private String nome;
	private String tipo;
	public Curso(int id, String nome, String tipo) {
		
		this.id = id;
		this.nome = nome;
		this.tipo = tipo;
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
	protected String getTipo() {
		return tipo;
	}
	protected void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
}
