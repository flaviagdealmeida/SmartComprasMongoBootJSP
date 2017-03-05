package br.org.smartcompras.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class SistemaController {
	
	
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	
	@RequestMapping("equipe")
	public String equipe() {
		return "equipe";
	}

	@RequestMapping("sobre")
	public String sobre() {
		return "sobre";
	}

	@RequestMapping("uso")
	public String uso() {
		return "uso";
	}
	
	@RequestMapping("sistema")
	public String sistema() {
		return "sistema";
	}
	
	@RequestMapping("maiorgasto")
	public String maiorgasto() {
		return "maiorgasto";
	}
	
	@RequestMapping("gasto")
	public String gasto() {
		return "gasto";
	}
	
	
	@RequestMapping("teste")
	public String teste() {
		return "teste";
	}
	
	@RequestMapping("localizacao")
	public String localizacao() {
		return "localizacao";
	}
	
	@RequestMapping("carrinhoproduto")
	public String carrinho() {
		return "carrinhoproduto";
	}
	
	@RequestMapping("cadastro")
	public String cadastro() {
		return "cadastro";
	}
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}

	@RequestMapping("marca")
	public String marca() {
		return "marca";
	}

	@RequestMapping("listamarca2")
	public String listamarca2() {
		return "listamarca2";
	}
}
