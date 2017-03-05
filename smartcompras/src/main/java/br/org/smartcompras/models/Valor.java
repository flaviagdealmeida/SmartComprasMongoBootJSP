package br.org.smartcompras.models;

import java.math.BigDecimal;

public class Valor {
	
	private BigDecimal preço;
	private TipoPreco tipo;
	
	
	public BigDecimal getPreço() {
		return preço;
	}
	public void setPreço(BigDecimal preço) {
		this.preço = preço;
	}
	public TipoPreco getTipo() {
		return tipo;
	}
	public void setTipo(TipoPreco tipo) {
		this.tipo = tipo;
	} 
	
	
	
	

}
