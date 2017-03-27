package br.org.smartcompras.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;

@Configuration
public class LoginController {

	@RequestMapping("login")
	public String equipe() {
		return "sistema";
	}

}
