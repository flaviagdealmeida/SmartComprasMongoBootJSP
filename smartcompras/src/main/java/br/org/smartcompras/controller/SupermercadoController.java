package br.org.smartcompras.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.org.smartcompras.models.Supermercado;
import br.org.smartcompras.repository.SupermercadoMongoRepository;

@Controller
public class SupermercadoController {

	@Autowired
	SupermercadoMongoRepository supermercadoRepository;
	

	@RequestMapping(value = "/addsupermercados", method = RequestMethod.POST)
	@CacheEvict(value="supermercadosLista", allEntries=true)
	public String addSupermercados(@ModelAttribute Supermercado supermercado) {
		supermercadoRepository.save(supermercado);
		return "redirect:supermercado";

	}
	
	  @RequestMapping(value="/editemp/{id}")  
	    public ModelAndView edit(@PathVariable String id){  
	        Supermercado supermecado = supermercadoRepository.findOne(id); 
	        return new ModelAndView("supermercadoEdit","command",supermecado);  
	    }  

	@RequestMapping(value = "/searchsupermercados")
	public String search(@RequestParam String searchsupermercados) {
		return "redirect:supermercado";
	}

	
	
	@RequestMapping("/listasupermercado")
	public String supermercadoLista(Model model) {
		model.addAttribute("supermercadoLista", supermercadoRepository.findAll());
		return "listasupermercado";
	}

	@RequestMapping(value = "/delsupermercado", params = { "removerSupermercado" }, method = RequestMethod.POST)

	public String delSupermercado(@ModelAttribute Supermercado supermercado, final HttpServletRequest req) {
		String supermercadoId = String.valueOf((req.getParameter("removerSupermercado")));

		supermercadoRepository.delete(supermercadoId);

		return "redirect:listasupermercado";
	}
	

	

}
