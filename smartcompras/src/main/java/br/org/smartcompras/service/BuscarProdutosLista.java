package br.org.smartcompras.service;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;
import org.bson.conversions.Bson;
import org.springframework.beans.factory.annotation.Autowired;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import br.org.smartcompras.repository.ProdutoMongoRepository;

public class BuscarProdutosLista {
	

public static void main(String[] args) {
	
	
	
		MongoClient mongoClient  = new MongoClient();
	
		MongoDatabase db = mongoClient.getDatabase("smartcompras");
		MongoCollection<Document> collIt = db.getCollection("item");
		MongoCollection<Document> collPd = db.getCollection("produto");
		
		
		//List<Document> todosProd = 
		
		Bson filtroNomeListaItem = Filters.eq("nomeLista","Lista lista");
	//	List<Produto> = pr
		
//		List<Document> buscaItens = collIt.find(Filters.elemMatch("produtos", filtroBuscarTodos))
//				.into(new ArrayList<Document>());
	
			
//		for (int i = 0; i<buscaItens.size();i++){
//			System.out.println(buscaItens.get(i));
//		}
		
		
	// MongoCursor<Document> cursor = collection.find().iterator();
	// try {
	// while (cursor.hasNext()) {
	// System.out.println(cursor.next().toJson());
	// }
	// } finally {
	// cursor.close();
	// }
	//
}
}
