package com.holyribbas.model;

public class Turma {

		private String id;
		private int semestre;
		private int ano;
		
			public Turma(String id, int semestre, int ano) {
				
				this.id = id;
				this.semestre = semestre;
				this.ano = ano;
		}

			protected String getId() {
				return id;
			}

			protected void setId(String id) {
				this.id = id;
			}

			protected int getSemestre() {
				return semestre;
			}

			protected void setSemestre(int semestre) {
				this.semestre = semestre;
			}

			protected int getAno() {
				return ano;
			}

			protected void setAno(int ano) {
				this.ano = ano;
			}
}
