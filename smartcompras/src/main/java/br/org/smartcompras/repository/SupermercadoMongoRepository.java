package br.org.smartcompras.repository;

import org.springframework.data.repository.CrudRepository;

import br.org.smartcompras.models.Supermercado;


public interface SupermercadoMongoRepository extends CrudRepository<Supermercado, String>{

}
