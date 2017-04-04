package br.org.smartcompras.service;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

public class BuscarLista {
	
	
	
	
public static void main(String[] args) {
	
	
		MongoClient mongoClient  = new MongoClient();
	
		MongoDatabase db = mongoClient.getDatabase("smartcompras");
		MongoCollection<Document> coll = db.getCollection("predefinida");

		Bson filtroBuscarLista = Filters.eq("produto", "Cerveja Lata Brahma");

		List<Document> document = coll.find(Filters.elemMatch("produtos", filtroBuscarLista))
				.into(new ArrayList<Document>());

		
			for (int i = 0; i<document.size();i++){
				System.out.println(document.get(i).toJson());
				System.out.println(document.size());
			}
		
		
		
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
