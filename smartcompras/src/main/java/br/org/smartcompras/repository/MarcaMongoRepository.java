package br.org.smartcompras.repository;

import br.org.smartcompras.models.Marca;
import org.springframework.data.repository.CrudRepository;


public interface MarcaMongoRepository extends CrudRepository<Marca, String>{

}
