package br.org.smartcompras.models;

public class PrecoMercado {

	private String supermercado;
	private Double valor;
	
	
		
	
	public PrecoMercado(String supermercado, Double valor) {
		super();
		this.supermercado = supermercado;
		this.valor = valor;
	}
		
	
	public PrecoMercado() {
		super();
		
	}
		
	
	public String getSupermercado() {
		return supermercado;
	}


	public void setSupermercado(String supermercado) {
		this.supermercado = supermercado;
	}


	public Double getValor() {
		return valor;
	}


	public void setValor(Double valor) {
		this.valor = valor;
	}


	@Override
	public String toString() {
		return "PrecoMercado [supermercado=" + supermercado + ", valor=" + valor + "]";
	}
	
	
	
	
	
	
	
	
	
}
