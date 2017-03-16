package br.org.smartcompras.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.security.core.GrantedAuthority;

@Document
public class Papel implements GrantedAuthority {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	@Id
	private String id;
	
	private Usuario usuario;
	
	private Modulo modulo;
	
	
	public String getAuthority() {
		
		return modulo.toString();
	}

	

	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public Usuario getUsuario() {
		return usuario;
	}


	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}


	public Modulo getModulo() {
		return modulo;
	}


	public void setModulo(Modulo modulo) {
		this.modulo = modulo;
	}


	@Override
	public String toString() {
		return "Papel [id=" + id + ", modulo=" + modulo + "]";
	}

	
	
	
}
