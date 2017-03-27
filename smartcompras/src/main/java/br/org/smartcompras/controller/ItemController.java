package br.org.smartcompras.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.org.smartcompras.models.Item;
import br.org.smartcompras.repository.ItemMongoRepository;
import br.org.smartcompras.repository.ProdutoMongoRepository;


@Controller
public class ItemController {

	@Autowired
	ItemMongoRepository itemRepository;
	
	@Autowired
	ProdutoMongoRepository produtoRepository;
	
	 
	@RequestMapping(value = "/additens", method = RequestMethod.POST)
	@CacheEvict(value="preLista", allEntries=true)
	public String addProdutos(@ModelAttribute Item item) {
		itemRepository.save(item);
		return "redirect:carrinho2";

	}
	

	@RequestMapping(value = "/searchitem")
	public String search(@RequestParam String searchitem) {
		return "redirect:listaitem";
	}

	@RequestMapping("/carrinho2")
	public String itemList(Model model) {
		model.addAttribute("produtoList", produtoRepository.findAll());
		model.addAttribute("itemList", itemRepository.findAll());
		
		
		
		
		return "carrinho2";
		
		
		
	}

	
	@RequestMapping(value = "/delitem", params = { "removerItem" }, method = RequestMethod.POST)

	public String delProduto(@ModelAttribute Item item, final HttpServletRequest req) {
		String itemId = String.valueOf((req.getParameter("removerItem")));

		itemRepository.delete(itemId);

		return "redirect:carrinho2";
	}
	
	/*
	
	@RequestMapping(value = "/altprodutoslista", params = {"alterarProdutos"}, method = RequestMethod.POST)

	public String altProdutos(@ModelAttribute Produto produto, final HttpServletRequest req) {
		String produtoId = String.valueOf((req.getParameter("alterarProdutos")));

		produtoRepository.findOne(produtoId);

		return "redirect:produto";
	}*/
	
}
