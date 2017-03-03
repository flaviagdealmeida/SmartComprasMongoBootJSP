package br.org.smartcompras.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.org.smartcompras.models.Usuario;
import br.org.smartcompras.repository.UsuarioMongoRepository;



@Controller
public class UsuarioController {

	@Autowired
	UsuarioMongoRepository usuarioRepository;
	
	@RequestMapping(value = "/addusuario", method = RequestMethod.POST)
	public String addMarcas(@ModelAttribute Usuario usuario) {
		usuarioRepository.save(usuario);
		return "redirect:home";

	}
	

	@RequestMapping(value = "/searchusuarios")
	public String search(@RequestParam String searchusuarios) {
		return "redirect:home";
	}

	@RequestMapping("/usuario")
	public String usuarioList(Model model) {
		model.addAttribute("usuarioList", usuarioRepository.findAll());
		return "home";
	}

	@RequestMapping(value = "/delusuario", params = { "removerusuario" }, method = RequestMethod.POST)

	public String delusuario(@ModelAttribute Usuario usuario, final HttpServletRequest req) {
		String usuarioId = String.valueOf((req.getParameter("removerusuario")));

		usuarioRepository.delete(usuarioId);

		return "redirect:home";
	}

}
