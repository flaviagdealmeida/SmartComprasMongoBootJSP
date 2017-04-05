package br.org.smartcompras.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class SistemaController {
	
	
	
	@RequestMapping("/")
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
	
	@RequestMapping("gastos")
	public String gastos() {
		return "gastos";
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
	
	
	@RequestMapping("/erro404")
	public String erro404() {
		return "erro404";
	}
	
	
	@RequestMapping("supermercado")
	public String supermercado() {
		return "supermercado";
	}

	@RequestMapping("listamarca2")
	public String listamarca2() {
		return "listamarca2";
	}
	
//	@RequestMapping("listadecompras2")
//	public String listadecompras2() {
//		return "listadecompras2";
//	}
	
//	@RequestMapping("carrinho2")
//	public String carrinho2() {
//		return "carrinho2";
//	}

	@RequestMapping("rodape")
	public String rodape() {
		return "rodape";
	}
	
	@RequestMapping("importararquivo")
	public String importararquivo() {
		return "importararquivo";
	}
	
	@RequestMapping("usuarioCad")
	public String usuarioCad() {
		return "cadastroADM";
	}

}
