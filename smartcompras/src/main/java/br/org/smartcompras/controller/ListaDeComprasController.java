package br.org.smartcompras.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;

import br.org.smartcompras.models.Item;
import br.org.smartcompras.models.Produto;
import br.org.smartcompras.repository.ProdutoMongoRepository;

@Controller
public class ListaDeComprasController {

	
	
	@Autowired
	MongoClient mongoClient;
	
	@Autowired
	ProdutoMongoRepository produtoRepository;
	
	
@RequestMapping(value="/valorLista", params = { "nomeLista" }, method= RequestMethod.POST)	
	
	public String buscarPrecos(final HttpServletRequest req){
	MongoDatabase db = mongoClient.getDatabase("smartcompras");
	
		
		
		
		
	
	
		return "compras";
	}
	
	

	
}
