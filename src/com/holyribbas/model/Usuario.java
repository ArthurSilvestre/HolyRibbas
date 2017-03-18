package com.holyribbas.model;

public class Usuario {
	private String login;
	private String senha;
	private String nome;
	private String matricula;
	private Endereco endereco;
	
	public Usuario(String login, String senha, String nome, String matricula, Endereco endereco) {
		this.login = login;
		this.senha = senha;
		this.nome = nome;
		this.matricula = matricula;
		this.endereco = endereco;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	
}
