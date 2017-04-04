package br.org.smartcompras.service;

import java.util.HashSet;
import java.util.Set;

import org.bson.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import br.org.smartcompras.models.MongoUserDetails;

public class CostumerUserDetails implements UserDetailsService {

	@Autowired
	private MongoClient mongoClient;

	private Set<GrantedAuthority> authorities;

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

		MongoDatabase database = mongoClient.getDatabase("smartcompras");
		MongoCollection<Document> collection = database.getCollection("usuarios");

		Document document = collection.find(Filters.eq("email", email)).first();

		if (document != null) {

			String password = document.getString("senha");
			String emailFind = document.getString("email");
			String autorizacao = document.getString("role");


			authorities = new HashSet<>();
            authorities.add(new SimpleGrantedAuthority(autorizacao));
			
			MongoUserDetails mongoUserDetails = new MongoUserDetails(emailFind, password, authorities);


			return mongoUserDetails;
		} else {

			throw new UsernameNotFoundException("username not found");
		}

	}

}