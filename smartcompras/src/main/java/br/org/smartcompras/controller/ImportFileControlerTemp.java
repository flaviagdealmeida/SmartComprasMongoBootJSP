//package br.org.smartcompras.controller;
//
//import java.io.File;
//import java.io.FileNotFoundException;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Scanner;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.bson.Document;
//import org.bson.conversions.Bson;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import com.mongodb.MongoClient;
//import com.mongodb.client.MongoCollection;
//import com.mongodb.client.MongoDatabase;
//import com.mongodb.client.model.Filters;
//
//import br.org.smartcompras.models.PrecoMercado;
//import br.org.smartcompras.models.Produto;
//import br.org.smartcompras.repository.ProdutoMongoRepository;
//
//@Controller
//public class ImportFileControlerTemp {
//
//	@Autowired
//	ProdutoMongoRepository produtoRepository;
//
//	@Autowired
//	private MongoClient mongoClient;
//
//	String caminho, novocaminho;
//
//	@SuppressWarnings("null")
//	@RequestMapping(value="/importarquivo",params = { "caminhoArquivo" }, method = RequestMethod.POST)
//	public String ImportFile(@ModelAttribute Produto produtos, final HttpServletRequest req) throws FileNotFoundException {
//
//		caminho = "C:/arquivo/"+String.valueOf((req.getParameter("caminhoArquivo")));
//		novocaminho = caminho.replaceAll("'\\'", "/");
//		
//		File arquivoCSV = new File(caminho);
//			try {
//			String linhaDoArquivo = "";
//			String[] valorEntreVirgula;
//			@SuppressWarnings("resource")
//			Scanner leitor = new Scanner(arquivoCSV);
//			
//			while (leitor.hasNext()) {
//				Produto produto = new Produto();
//				PrecoMercado pm = new PrecoMercado();
//				List<PrecoMercado> precos = new ArrayList<PrecoMercado>();
//			
//
//				linhaDoArquivo = leitor.nextLine();
//						
//				valorEntreVirgula = linhaDoArquivo.split(";");
//				produto.setImgProduto(valorEntreVirgula[0]);
//				produto.setMarca(valorEntreVirgula[1]);
//				produto.setProduto(valorEntreVirgula[2]);
//				produto.setTipoProduto(valorEntreVirgula[3]);
//				pm.setSupermercado(valorEntreVirgula[4]);
//				pm.setValor(Double.parseDouble(valorEntreVirgula[5]));
//				
//				precos.add(pm);
//				produto.setPreco(precos);
//				
//				
//				MongoDatabase database = mongoClient.getDatabase("smartcompras");
//				MongoCollection<Document> collection = database.getCollection("produto");
//			//	MongoCollection<Document> coll = database.getCollection("predefinida");
//
//				
//				Bson filtroBuscarProdutos = Filters.eq("supermercado",pm.getSupermercado());
//				Document document = collection.find(Filters.eq("produto", produto.getProduto())).first();
//				
//				String[] valorpreco;
//				 valorpreco = document.toString().split("preco");
//				 System.out.println(valorpreco.length);
//				 String valorprecovirgula;
//				 valorprecovirgula = valorpreco[1];
//				String[] arry;
//				 arry =valorprecovirgula.split(",");
//				 
//				 String arry2;
//				 String [] arry3;
//				 arry2 = arry[1];
//				 arry3 = arry2.split("supermercado=");
//				
//				 for(int i = 0 ;i<arry3.length  ;i++){
//				System.out.println(arry3[i]+"\n");
//				 }
//				
//				
//				
//				List<Document> buscarSuper = collection.find(Filters.elemMatch("supermercado", filtroBuscarProdutos))
//						.into(new ArrayList<Document>());						
//				
//				
//				Document precoProduto = new Document();
//				Document pushSupermercado; 
//				Document novoPreco = new Document();
//				//Document atualizaPreco;
//								
//					if (document == null){ 
//						produtoRepository.save(produto);
//						
//					}else if(document != null && buscarSuper ==null){
//						precoProduto.append("supermercado", pm.getSupermercado());
//						precoProduto.append("valor", pm.getValor());
//					} else {
//						
//						precoProduto.append("supermercado", pm.getSupermercado());
//						precoProduto.append("valor", pm.getValor());
//						
//						pushSupermercado = new Document("$push",new Document("preco",precoProduto));
//						collection.updateOne(document, pushSupermercado);
//						
//						System.out.println(document);
////						novoPreco.append("valor", pm.getValor());
//						//atualizaPreco = new Document("$inc",novoPreco);
//						collection.updateOne(document, precoProduto);
//					//	collection.replaceOne(filtroBuscarProdutos,novoPreco);
//					}
//						
//			}			
//					
//
//		} catch (RuntimeException e) {
//			e.printStackTrace();
//			return "redirect:erro404";
//		}
//			//leitor.close();
//
//		return "importararquivo";
//		
//	}
//
//}