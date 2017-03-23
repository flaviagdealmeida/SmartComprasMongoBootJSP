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
	
	private String tipo;
	
	
	public String getAuthority() {
		
		return tipo.toString();
	}

	

	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	

	@Override
	public String toString() {
		return "Papel [id=" + id + ", tipo=" + tipo + "]";
	}

	
	
	
}
