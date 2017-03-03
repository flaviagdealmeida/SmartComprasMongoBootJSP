package br.org.smartcompras.controller;

import org.springframework.beans.factory.annotation.Autowired;
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
	public String produtoList(Model model) {
		model.addAttribute("produtoList", produtoRepository.findAll());
		return "listaproduto";
	}
		
		
	
	@RequestMapping("/listadecompras")
	public String comprasList(Model model) {
		model.addAttribute("comprasList", produtoRepository.findAll());
		return "listadecompras";
	}
	
	
	
	@RequestMapping("/listaimgproduto")
	@ResponseBody
	public Iterable<Produto> imgsProduto(){
		return this.produtoRepository.findAll();
		
	}
	
}
