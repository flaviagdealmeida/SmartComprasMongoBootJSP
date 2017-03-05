package br.org.smartcompras.models;

import java.util.List;

import org.springframework.data.annotation.Id;

public abstract class Lista {

	@Id
	private String id;
	private String nomeLista;
	private List<TipoLista> tipoLista;
	private List<Valor>valor;
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

	public List<TipoLista> getTipoLista() {
		return tipoLista;
	}

	public void setTipoLista(List<TipoLista> tipoLista) {
		this.tipoLista = tipoLista;
	}

	public List<Valor> getValor() {
		return valor;
	}

	public void setValor(List<Valor> valor) {
		this.valor = valor;
	}

	public List<Produto> getProdutos() {
		return produtos;
	}

	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}

	abstract double calcularLista();
	abstract boolean gerarLista();
}
