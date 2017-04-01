package br.org.smartcompras.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.bson.Document;
import org.bson.conversions.Bson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import br.org.smartcompras.models.Predefinida;
import br.org.smartcompras.repository.ListasPreMongoRepository;
import br.org.smartcompras.repository.ProdutoMongoRepository;


@Controller
public class ListaPreController {

	@Autowired
	ListasPreMongoRepository preRepository;
	
	@Autowired
	ProdutoMongoRepository produtoRepository;
	
	@Autowired
	MongoClient mongoClient;
	
	 
	@RequestMapping(value = "/addlistapre", method = RequestMethod.POST)
	@CacheEvict(value="preLista", allEntries=true)
	public String addProdutos(@ModelAttribute Predefinida predefinida) {
		preRepository.save(predefinida);
		return "redirect:listapredefinida";

	}
	

	@RequestMapping(value = "/searchpredefinida")
	public String search(@RequestParam String searchpredefinida) {
		return "redirect:listapredefinida";
	}

	@RequestMapping("/listapredefinida")
	@Cacheable(value="preLista")
	public String preList(Model model) {
		model.addAttribute("produtoList", produtoRepository.findAll());
		model.addAttribute("preList", preRepository.findAll());
		return "listapredefinida";
	}

	@RequestMapping("/listaspre")
	public String preLists(Model model) {
		model.addAttribute("preLists", preRepository.findAll());
		return "listaspre";
	}

	
	@RequestMapping("/prechurrasco")
		public String churrascoLista(){
			mongoClient  = new MongoClient();
			
			MongoDatabase db = mongoClient.getDatabase("smartcompras");
			MongoCollection<Document> coll = db.getCollection("predefinida");
	
			Bson filtroBuscarLista = Filters.eq("produto", "Cerveja Lata Brahma");
	
			List<Document> churrascoLista = coll.find(Filters.elemMatch("produtos", filtroBuscarLista))
					.into(new ArrayList<Document>());
		
			return "listaprechurrasco";
	}
	
	
	
		
	@RequestMapping("/menu")
	public String preListas(Model model) {
		model.addAttribute("preListas", preRepository.findAll());
		return "menu";
	}
	
	@RequestMapping(value = "/delpredefinida", params = { "removerPredefinida" }, method = RequestMethod.POST)

	public String delProduto(@ModelAttribute Predefinida predefinida, final HttpServletRequest req) {
		String predefinidaId = String.valueOf((req.getParameter("removerPredefinida")));

		preRepository.delete(predefinidaId);

		return "redirect:listaspre";
	}
	
	/*
	
	@RequestMapping(value = "/altprodutoslista", params = {"alterarProdutos"}, method = RequestMethod.POST)

	public String altProdutos(@ModelAttribute Produto produto, final HttpServletRequest req) {
		String produtoId = String.valueOf((req.getParameter("alterarProdutos")));

		produtoRepository.findOne(produtoId);

		return "redirect:produto";
	}*/
	
}
