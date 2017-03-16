package br.org.smartcompras.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.security.core.GrantedAuthority;

@Document
public class Role implements GrantedAuthority {
	
	//implements GrantedAuthority
	private static final long serialVersionUID = 1L;
	@Id
	private String nome;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public String getAuthority() {
		
		return this.nome;
	}
	
	
	
	

}
