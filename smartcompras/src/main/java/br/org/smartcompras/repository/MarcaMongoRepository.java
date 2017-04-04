package br.org.smartcompras.repository;

import org.springframework.data.repository.CrudRepository;

import br.org.smartcompras.models.Marca;


public interface MarcaMongoRepository extends CrudRepository<Marca, String>{

}
