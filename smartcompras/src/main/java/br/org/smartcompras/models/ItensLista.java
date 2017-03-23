package br.org.smartcompras.models;

public class ItensLista {

	private Produto Produto;
	private Integer quantidade;
	
		
	
	public ItensLista() {
		super();
	}
	
	
	public ItensLista(br.org.smartcompras.models.Produto produto) {
		super();
		Produto = produto;
		//this.quantidade = quantidade;
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


	@Override
	public String toString() {
		return "ItensLista [Produto=" + Produto + "]";
	}
		
	
	
	
	
	
	
	
}
