package br.org.smartcompras.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.org.smartcompras.models.Item;
import br.org.smartcompras.models.Produto;

@Controller
public class CartController {
	
	
	@RequestMapping(value="/cart", method=RequestMethod.GET)
	
	public ModelAndView produto(){
		return new ModelAndView("produto","command", new Produto());		
	}
	
	@RequestMapping(value="/addProduto", method = RequestMethod.POST)
	public String adicionarProduto(@ModelAttribute("SpringWeb") Item item, ModelMap model, HttpServletRequest request){
		
		
		model.addAttribute("id", item.getProduto().getId());
		model.addAttribute("produto", item.getProduto().getProduto());
		model.addAttribute("tipoProduto", item.getProduto().getTipoProduto());
		model.addAttribute("quantidade", item.getQuantidade());
		
		
		List<Item> itens = (List<Item>) request.getSession().getAttribute("itens");
			if(itens == null){
				itens = new ArrayList<Item>();
			}	
			
			itens.add(item);
			request.getSession().setAttribute("itens", itens);
		
		return "exibeCarrinho";
		
	}
	
	
	@RequestMapping(value = "/listaitens", method = RequestMethod.GET)
	public String listarItens(
	@ModelAttribute("SpringWeb") ModelMap model, HttpServletRequest request) {
		
    List<Item> itens = (List<Item>) request.getAttribute("itens");
		
    model.addAttribute("itens", itens);	
		
    return "listaitens";
   }
	
}