package com.holyribbas.model;

import java.util.Date;

public class Aluno extends Usuario{
	private Date dataVinculo;

	public Aluno(String login, String senha, String nome, String matricula, Date dataVinculo) {
		super(login, senha, nome, matricula);
		this.dataVinculo = dataVinculo;
	}

	public Date getDataVinculo() {
		return dataVinculo;
	}

	public void setDataVinculo(Date dataVinculo) {
		this.dataVinculo = dataVinculo;
	}

}
