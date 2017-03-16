package br.org.smartcompras.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.MongoTemplate;

import com.mongodb.Mongo;
import com.mongodb.MongoClient;

@Configuration

public class MongoConfiguration {
  
	 @Bean
	    public Mongo mongo() throws Exception {
	        return new MongoClient("localhost");
	    }
	 
	    @Bean
	    public MongoTemplate mongoTemplate() throws Exception {
	        return new MongoTemplate(mongo(), "smartcompras");
	    }
  
  
}