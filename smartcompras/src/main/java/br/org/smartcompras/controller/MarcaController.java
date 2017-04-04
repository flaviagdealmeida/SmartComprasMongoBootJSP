package br.org.smartcompras.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;

import br.org.smartcompras.models.Marca;
import br.org.smartcompras.repository.MarcaMongoRepository;
import br.org.smartcompras.repository.ProdutoMongoRepository;

@Controller
public class MarcaController {

	@Autowired
	MarcaMongoRepository marcaRepository;
	@Autowired
	ProdutoMongoRepository produtoRepository;

	@RequestMapping(value = "/addmarcas", method = RequestMethod.POST)
	@CacheEvict(value = "marcasLista", allEntries = true)
	public String addMarcas(@ModelAttribute Marca marca) {
		marcaRepository.save(marca);
		return "redirect:marca";

	}

	@RequestMapping(value = "/searchmarcas")
	public String search(@RequestParam String searchmarcas) {
		return "redirect:marca";
	}

	@RequestMapping("/listamarca")
	@Cacheable(value = "marcasLista")
	public String marcaLista(Model model) {
		// model.addAttribute("marcaLista", marcaRepository.findAll());
		MongoClient m1 = new MongoClient();
		DB db = m1.getDB("smartcompras");
		DBCollection coll = db.getCollection("produto");
		List cl1 = coll.distinct("marca");

		model.addAttribute("marcaLista", cl1);
		return "listamarca";
	}

	@RequestMapping(value = "/delmarca", params = { "removerMarca" }, method = RequestMethod.POST)

	public String delMarca(@ModelAttribute Marca marca, final HttpServletRequest req) {
		String marcaId = String.valueOf((req.getParameter("removerMarca")));

		marcaRepository.delete(marcaId);

		return "redirect:listamarca";
	}

}
