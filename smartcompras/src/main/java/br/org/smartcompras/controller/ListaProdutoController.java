package br.org.smartcompras.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import br.org.smartcompras.models.Produto;
import br.org.smartcompras.repository.ProdutoMongoRepository;

@Controller
public class ListaProdutoController {

	@Autowired
	ProdutoMongoRepository produtoRepository;

	
	@RequestMapping(value = "/searchprodutoslista")
	public String search(@RequestParam String searchprodutoslista) {
		return "redirect:listaproduto";
	}

	@RequestMapping("/listaproduto")
	@Cacheable(value="produtosList")

	public String produtoList(Model model) {
		model.addAttribute("produtoList", produtoRepository.findAll());
		return "listaproduto";
	}
		
//	@RequestMapping("/listadecompras3")	
//	public String produtosList(Model model) {
//		model.addAttribute("produtoList", produtoRepository.findAll());
//		return "listadecompras3";
//	}	
	
	@RequestMapping("/listadecompras2")	
	public String produtosList(Model model) {
		model.addAttribute("produtoList", produtoRepository.findAll());
		return "listadecompras2";
	}	
	
	 	 	
	@RequestMapping("/api/listaimgproduto")
	@ResponseBody
	public Iterable<Produto> imgsProduto(){
		return this.produtoRepository.findAll();
		
	}
	
}
