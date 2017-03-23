package br.org.smartcompras.models;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.data.annotation.Id;

public class Carrinho{

	@Id
	private String id;
	
	private String nomeLista;
	
	private String valor;
	
	private List<ItensLista> itens;

	private Integer quantidade;
		
	
	public Carrinho() {
		super();
	}
	
	
	public void addNovoItem(ItensLista item){
		
		if(this.itens == null)
			this.itens = new ArrayList<ItensLista>();
		
		this.itens.add(item);
	}

	
	public void removeItem(ItensLista itemRemove){
		
		for (Iterator i = itens.iterator();i.hasNext();) {
			ItensLista item = (ItensLista) i.next();
			
			if(item.getProduto().getId() == itemRemove.getProduto().getId())
				i.remove();
			
		}
	}
	
	
	public Integer getQuantidade() {
		return getQuantidade();
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


	public List<ItensLista> getItens() {
		return itens;
	}


	public void setItens(List<ItensLista> itens) {
		this.itens = itens;
	}

	

	
	
	
	
}
