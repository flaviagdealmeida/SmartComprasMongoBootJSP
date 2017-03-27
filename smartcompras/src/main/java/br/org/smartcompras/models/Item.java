package br.org.smartcompras.models;

import java.util.List;

import org.springframework.data.annotation.Id;

public class Item{

	@Id
	private String id;
	
	private String nomeLista;
	
	private List<Produto> produtos;
		
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

	

	public List<Produto> getProdutos() {
		return produtos;
	}

	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}
}
