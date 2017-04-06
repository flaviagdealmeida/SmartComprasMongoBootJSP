package br.org.smartcompras.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.org.smartcompras.models.Item;
import br.org.smartcompras.repository.ItemMongoRepository;
import br.org.smartcompras.repository.ProdutoMongoRepository;

@Controller
public class ItemController {

	@Autowired
	MongoTemplate mongoTemplate;

	@Autowired
	ItemMongoRepository itemRepository;

	@Autowired
	ProdutoMongoRepository produtoRepository;

	@RequestMapping(value = "/addLista", method = RequestMethod.POST)
	// @CacheEvict(value="preLista", allEntries=true)
	public String addProdutos(@ModelAttribute("item") Item item, RedirectAttributes redirectAttributes) {
		itemRepository.save(item);
		redirectAttributes.addFlashAttribute("item", item);
		return "redirect:carrinho2";

	}

	@RequestMapping(value = "/searchitem")
	public String search(@RequestParam String searchitem) {
		return "redirect:listaitem";
	}

	@RequestMapping(value = "/carrinho2", method = RequestMethod.GET)
	public String itemList(@ModelAttribute Item item, RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("item", item);
		return "carrinho2";
	}

	@RequestMapping(value = "/minhaslistasnome", params = "{nomeLista}", method = RequestMethod.POST)
	public String myList(@ModelAttribute Item item, final HttpServletRequest req) {
		String itemId = String.valueOf((req.getParameter("nomeLista")));
		itemRepository.findOne(itemId);
		return "redirect:minhaslistas";
	}

	@RequestMapping("/minhaslistas")
	public String itemLista(@ModelAttribute Item item, Model model) {
		model.addAttribute("itemLista", itemRepository.findAll());

		return "minhaslistas";
	}

	@RequestMapping(value = "/delitem", params = { "removerItem" }, method = RequestMethod.POST)

	public String delProduto(@ModelAttribute Item item, final HttpServletRequest req) {
		String itemId = String.valueOf((req.getParameter("removerItem")));

		itemRepository.delete(itemId);

		return "redirect:carrinho2";
	}

	/*
	 * 
	 * @RequestMapping(value = "/altprodutoslista", params =
	 * {"alterarProdutos"}, method = RequestMethod.POST)
	 * 
	 * public String altProdutos(@ModelAttribute Produto produto, final
	 * HttpServletRequest req) { String produtoId =
	 * String.valueOf((req.getParameter("alterarProdutos")));
	 * 
	 * produtoRepository.findOne(produtoId);
	 * 
	 * return "redirect:produto"; }
	 */

	@SuppressWarnings("unused")
	public void itens() {
		List<Item> itemBanco = new ArrayList<Item>();
		System.out.println(itemRepository.findAll());

	}

}
