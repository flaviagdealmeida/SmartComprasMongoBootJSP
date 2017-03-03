package br.org.smartcompras.models;

import java.util.ArrayList;

import org.springframework.data.annotation.Id;

public abstract class Lista {

	@Id
	private String id;
	private String nomeLista;
	private String tipoLista;
	private String valor;
	private ArrayList<Produto> produtos;
		
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNomeLista() {
		return nomeLista;
	}

	public void setNomeLista(String nomeLista) {
		this.nomeLista = nomeLista;
	}

	public String getTipoLista() {
		return tipoLista;
	}

	public void setTipoLista(String tipoLista) {
		this.tipoLista = tipoLista;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public ArrayList<Produto> getProdutos() {
		return produtos;
	}

	public void setProdutos(ArrayList<Produto> produtos) {
		this.produtos = produtos;
	}

	abstract double calcularLista();
	abstract boolean gerarLista();
}
