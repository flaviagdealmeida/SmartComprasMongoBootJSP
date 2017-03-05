package br.org.smartcompras.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
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
	public String addProdutos(@ModelAttribute Predefinida predefinida) {
		preRepository.save(predefinida);
		return "redirect:listapredefinida";

	}
	

	@RequestMapping(value = "/searchpredefinida")
	public String search(@RequestParam String searchpredefinida) {
		return "redirect:listapredefinida";
	}

	@RequestMapping("/listapredefinida")
	
	public String preList(Model model) {
		model.addAttribute("produtoList", produtoRepository.findAll());
		model.addAttribute("preList", preRepository.findAll());
		return "listapredefinida";
	}

	@RequestMapping(value = "/delpredefinida", params = { "removerPredefinida" }, method = RequestMethod.POST)

	public String delProduto(@ModelAttribute Predefinida predefinida, final HttpServletRequest req) {
		String predefinidaId = String.valueOf((req.getParameter("removerPredefinida")));

		produtoRepository.delete(predefinidaId);

		return "redirect:listapredefinida";
	}
	
	/*
	
	@RequestMapping(value = "/altprodutoslista", params = {"alterarProdutos"}, method = RequestMethod.POST)

	public String altProdutos(@ModelAttribute Produto produto, final HttpServletRequest req) {
		String produtoId = String.valueOf((req.getParameter("alterarProdutos")));

		produtoRepository.findOne(produtoId);

		return "redirect:produto";
	}*/
	
}