package br.org.smartcompras.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.org.smartcompras.models.Produto;
import br.org.smartcompras.repository.ListasComprasRepository;
import br.org.smartcompras.repository.ProdutoMongoRepository;
@Controller

public class CarrinhoComprasController {
	
	
	
	@Autowired
	ProdutoMongoRepository produtoRepository;
	
	@Autowired 	
	ListasComprasRepository comprasRepository;
		
	@RequestMapping(value = "/addprodutoslista", params = { "addProdutos" }, method = RequestMethod.POST)

	public String addProdutos(@ModelAttribute Produto produto, final HttpServletRequest req) {
		String produtos = String.valueOf((req.getParameter("addProdutos")));
		
			
		
	return "redirect:listacompras";
	}
	
	
	
	
	
	
}
