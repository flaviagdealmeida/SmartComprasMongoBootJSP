package br.org.smartcompras.models;

public class Item {

	private Produto Produto;
	private Integer quantidade;
	
		
	
	public Item(Produto produto, Integer quantidade) {
		super();
		Produto = produto;
		this.quantidade = quantidade;
	}



	public Produto getProduto() {
		return Produto;
	}
	public void setProduto(Produto produto) {
		Produto = produto;
	}


	public Integer getQuantidade() {
		return quantidade;
	}


	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}


	
	
	
}
