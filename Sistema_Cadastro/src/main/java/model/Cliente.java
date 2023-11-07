package model;

import java.time.LocalDate;

public class Cliente {

	private int id; 
	private String nome; 
	private LocalDate dataNasc;
	private String usuario;
	private String telefone;
	
	
	public Cliente() {
		super();

	}
	
	public Cliente(int id, String nome, LocalDate dataNasc, String usuario, String telefone) {
		super();
		this.id = id;
		this.nome = nome;
		this.dataNasc = dataNasc;
		this.usuario = usuario;
		this.telefone = telefone;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public LocalDate getDataNasc() {
		return dataNasc;
	}
	public void setDataNasc(LocalDate dataNasc) {
		this.dataNasc = dataNasc;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	
	
}
