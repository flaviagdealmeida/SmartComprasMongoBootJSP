package br.org.smartcompras.models;

import java.util.List;

import org.springframework.data.annotation.Id;

public class Produto {

	@Id
	private String id;
	private String produto;
	private String imgProduto;
	private String tipoProduto;
	private String marca;
	private List<PrecoMercado> preco;
		
		
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProduto() {
		return produto;
	}
	public void setProduto(String produto) {
		this.produto = produto;
	}
	public String getImgProduto() {
		return imgProduto;
	}
	public void setImgProduto(String imgProduto) {
		this.imgProduto = imgProduto;
	}
	public String getTipoProduto() {
		return tipoProduto;
	}
	public void setTipoProduto(String tipoProduto) {
		this.tipoProduto = tipoProduto;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public List<PrecoMercado> getPreco() {
		return preco;
	}
	public void setPreco(List<PrecoMercado> preco) {
		this.preco = preco;
	}
	
	
}
