package br.org.smartcompras.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.org.smartcompras.models.PrecoMercado;
import br.org.smartcompras.models.Produto;
import br.org.smartcompras.repository.ProdutoMongoRepository;

@Controller
public class ImportFileControler {

	@Autowired
	ProdutoMongoRepository produtoRepository;

	String caminho, novocaminho;
	
	
	@RequestMapping(value="/importarquivo",params = { "caminhoArquivo" }, method = RequestMethod.POST)
	public String ImportFile(@ModelAttribute Produto produtos, final HttpServletRequest req) throws FileNotFoundException {

		caminho = "C:/arquivo/"+String.valueOf((req.getParameter("caminhoArquivo")));
		novocaminho = caminho.replaceAll("'\\'", "/");
		
		File arquivoCSV = new File(caminho);
			try {
			String linhaDoArquivo = "";
			String[] valorEntreVirgula;
			@SuppressWarnings("resource")
			Scanner leitor = new Scanner(arquivoCSV);
			
			while (leitor.hasNext()) {
				Produto produto = new Produto();
				PrecoMercado pm = new PrecoMercado();
				List<PrecoMercado> precos = new ArrayList<PrecoMercado>();
			

				linhaDoArquivo = leitor.nextLine();
						
				valorEntreVirgula = linhaDoArquivo.split(";");
				produto.setImgProduto(valorEntreVirgula[0]);
				produto.setMarca(valorEntreVirgula[1]);
				produto.setProduto(valorEntreVirgula[2]);
				produto.setTipoProduto(valorEntreVirgula[3]);
				pm.setSupermercado(valorEntreVirgula[4]);
				pm.setValor(Double.parseDouble(valorEntreVirgula[5]));
				
				precos.add(pm);
				produto.setPreco(precos);
				
				produtoRepository.save(produto);
			}

		} catch (Exception e) {
			return "redirect:erro404";
		}

		return "importararquivo";
		
	}

		
}
