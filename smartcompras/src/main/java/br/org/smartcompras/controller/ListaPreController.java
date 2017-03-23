package br.org.smartcompras.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.org.smartcompras.models.Predefinida;
import br.org.smartcompras.repository.ListasPreMongoRepository;
import br.org.smartcompras.repository.ProdutoMongoRepository;


@Controller
public class ListaPreController {

	@Autowired
	ListasPreMongoRepository preRepository;
	
	@Autowired
	ProdutoMongoRepository produtoRepository;
	
	 
	
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

	
	@RequestMapping("/listaprechurrasco")
	public String preListaChurrasco(Model model) {
		model.addAttribute("preListaChurrasco", preRepository.findAll());
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
