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

import br.org.smartcompras.models.Carrinho;
import br.org.smartcompras.models.Predefinida;
import br.org.smartcompras.repository.CarrinhoMongoRepository;
import br.org.smartcompras.repository.ProdutoMongoRepository;


@Controller
public class CarrinhoController {

	@Autowired
	CarrinhoMongoRepository carrinhoRepository;
	
	@Autowired
	ProdutoMongoRepository produtoRepository;
	
	 
	
	@RequestMapping(value = "/addlistacar", method = RequestMethod.POST)
	public String addProdutos(@ModelAttribute Carrinho carrinho) {
		carrinhoRepository.save(carrinho);
		return "redirect:listadecompras2";

	}
	

	@RequestMapping("/listadecompras2")
	public String preList(Model model) {
		model.addAttribute("produtoList", produtoRepository.findAll());
		model.addAttribute("carrinhoList", carrinhoRepository.findAll());
		return "listadecompras2";
	}

	@RequestMapping(value = "/delcarrinho", params = { "removerCarrinho" }, method = RequestMethod.POST)

	public String delProduto(@ModelAttribute Predefinida predefinida, final HttpServletRequest req) {
		String carrinhoId = String.valueOf((req.getParameter("removerCarrinho")));

		produtoRepository.delete(carrinhoId);

		return "redirect:listadecompras";
	}
	
	/*
	
	@RequestMapping(value = "/altprodutoslista", params = {"alterarProdutos"}, method = RequestMethod.POST)

	public String altProdutos(@ModelAttribute Produto produto, final HttpServletRequest req) {
		String produtoId = String.valueOf((req.getParameter("alterarProdutos")));

		produtoRepository.findOne(produtoId);

		return "redirect:produto";
	}*/
	
}
