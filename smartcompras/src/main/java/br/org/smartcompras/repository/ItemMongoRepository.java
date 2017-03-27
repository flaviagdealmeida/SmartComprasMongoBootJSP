package br.org.smartcompras.repository;

import org.springframework.data.repository.CrudRepository;

import br.org.smartcompras.models.Item;

public interface ItemMongoRepository extends CrudRepository<Item, String>{

	

	
}
