package br.org.smartcompras.models;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import br.org.smartcompras.repository.UsuarioMongoRepository;

@Component
public class AcessoSistema implements AuthenticationProvider {
	
	
	@Autowired
	private UsuarioMongoRepository usuarioRepository;
	
	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
	
			String login = auth.getName();
			String senha = auth.getCredentials().toString();
			
		return null;
	}
	@Override
	public boolean supports(Class<?> auth) {
		
		return auth.equals(UsernamePasswordAuthenticationToken.class);
	}
	
	 private boolean usuarioAtivo(Usuario usuario) {
	        if (usuario != null) {
	            if (usuario.getStatus() == true) {
	                return true;
	            }
	        }
	        return false;
	    }
	

}
