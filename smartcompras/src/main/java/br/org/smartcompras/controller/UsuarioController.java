package br.org.smartcompras.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.org.smartcompras.models.Usuario;
import br.org.smartcompras.repository.UsuarioMongoRepository;

@Controller
public class UsuarioController implements UserDetailsService {

	@Autowired
	UsuarioMongoRepository usuarioRepository;

	@RequestMapping(value = "/addusuario", method = RequestMethod.POST)
	public String addusuario(Usuario usuario) {
		
		usuarioRepository.save(usuario);
		return "redirect:listausuario";

	}
	
	@RequestMapping(value = "/adduserfinal", method = RequestMethod.POST)
	public String adduserfinal(Usuario usuario) {
		
		usuarioRepository.save(usuario);
		return "redirect:login";

	}
	
	@RequestMapping("/listausuario")
	public String usuarioList(Model model) {
		model.addAttribute("usuarioList", usuarioRepository.findAll());

		return "listausuario";
	}

	@RequestMapping(value = "/searchusuarios")
	public String search(@RequestParam String searchusuarios) {
		return "redirect:home";
	}

	@RequestMapping(value = "/delusuario", params = { "removerusuario" }, method = RequestMethod.POST)

	public String delusuario(@ModelAttribute Usuario usuario, final HttpServletRequest req) {
		String usuarioId = String.valueOf((req.getParameter("removerusuario")));

		usuarioRepository.delete(usuarioId);

		return "redirect:listausuario";
	}

	@RequestMapping("/logar")
	public String loadUserByUsername(@ModelAttribute Usuario usuario, final HttpServletRequest req) {

		String usuarioLog = (req.getParameter("email"));

		usuarioRepository.findOne(usuarioLog);

		if (usuarioLog.isEmpty()) {
			throw new UsernameNotFoundException("Não localizado");
		}

		return "redirect:sistema";
	}

	@Override
	public UserDetails loadUserByUsername(String arg0) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

}
