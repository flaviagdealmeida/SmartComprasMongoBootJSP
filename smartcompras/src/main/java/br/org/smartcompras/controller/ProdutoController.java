package br.org.smartcompras.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.org.smartcompras.models.Produto;
import br.org.smartcompras.repository.MarcaMongoRepository;
import br.org.smartcompras.repository.ProdutoMongoRepository;
import br.org.smartcompras.validation.ProdutoValidation;


@Controller
public class ProdutoController {

	@Autowired
	ProdutoMongoRepository produtoRepository;
	
	@Autowired
	MarcaMongoRepository marcaRepository;
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.addValidators(new ProdutoValidation());
	}
	
	@RequestMapping(value = "addprodutos", method = RequestMethod.POST)
	@CacheEvict(value="produtoLista", allEntries=true)
	public String addProdutos(@ModelAttribute Produto produto) {
		
		produtoRepository.save(produto);
		return "redirect:produto";

	}
	

	@RequestMapping(value = "/searchprodutos")
	public String search(@RequestParam String searchprodutos) {
		return "redirect:produto";
	}

	@RequestMapping("/produto")
	@Cacheable(value="produtoLista")
	public String produtoList(Model model) {
		model.addAttribute("produtoList", produtoRepository.findAll());
		model.addAttribute("listMarca", marcaRepository.findAll());
		return "produto";
	}

	@RequestMapping(value = "/delproduto", params = { "removerProduto" }, method = RequestMethod.POST)

	public String delProduto(@ModelAttribute Produto produto, final HttpServletRequest req) {
		String produtoId = String.valueOf((req.getParameter("removerProduto")));

		produtoRepository.delete(produtoId);

		return "redirect:produto";
	}
	
	@RequestMapping(value = "/delprodutoslista", params = { "removerProdutos" }, method = RequestMethod.POST)

	public String delProdutos(@ModelAttribute Produto produto, final HttpServletRequest req) {
		String produtoId = String.valueOf((req.getParameter("removerProdutos")));

		produtoRepository.delete(produtoId);

		return "redirect:listaproduto";
	}
	
	
	@RequestMapping(value = "/altprodutoslista", params = {"alterarProdutos"}, method = RequestMethod.POST)

	public String altProdutos(@ModelAttribute Produto produto, final HttpServletRequest req) {
		String produtoId = String.valueOf((req.getParameter("alterarProdutos")));

		produtoRepository.findOne(produtoId);

		return "redirect:produto";
	}
	

	
	
	
	
	
}
