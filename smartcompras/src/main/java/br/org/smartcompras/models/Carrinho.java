package br.org.smartcompras.models;

import java.util.List;

import org.springframework.data.annotation.Id;

public class Carrinho{

	@Id
	private String id;
	
	private String nomeLista;
	
	private String valor;
	
	private List<Produto> produtos;
		
	private Integer quantidade; 
	
	
	
	
	
	public Carrinho() {
		super();
	}

	
	public Integer getQuantidade() {
		return quantidade;
	}


	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}


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

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public List<Produto> getProdutos() {
		return produtos;
	}

	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}
	
	
	
}
