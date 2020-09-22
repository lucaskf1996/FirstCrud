package br.edu.insper.mvc.model;
import java.sql.Date;

public class Notas {
	private Integer id;
	private String nome;
	private Date data;
	private String nota;
	

	public String getNome() {
		return nome;
	}
		
	public void setNome(String nome) {
		this.nome = nome;
		return;
	}

	public Date getData() {
		return this.data;
	}

	public void setData(Date data) {
		this.data = data;
		return;
	}

	public String getNota() {
		return nota;
	}

	public void setNota(String nota) {
		this.nota = nota;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}	
}