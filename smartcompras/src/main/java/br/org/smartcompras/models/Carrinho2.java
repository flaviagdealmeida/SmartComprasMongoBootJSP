package br.org.smartcompras.models;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

@Component
@SessionScope
public class Carrinho2 {

	private String nomeLista;

	private String valor;

	private List<Item> itens = new ArrayList<Item>();

	private Integer quantidade = 0;

	private Integer total;

	public Carrinho2() {
		super();
	}

	public void adiciona(Item item) {

		itens.add(item);
		this.quantidade += item.getQuantidade();
	}

	public Integer getQuantidade() {
		return getQuantidade();
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
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

	public List<Item> getItens() {
		return itens;
	}

	public void setItens(List<Item> itens) {
		this.itens = itens;
	}

	public Integer getTotal() {

		return total;

	}

	public void setTotal(Integer total) {
		this.total = itens.size();
	}

}
