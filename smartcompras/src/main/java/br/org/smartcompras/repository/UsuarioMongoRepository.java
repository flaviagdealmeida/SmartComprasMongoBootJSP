package br.org.smartcompras.repository;



import org.springframework.data.repository.CrudRepository;

import br.org.smartcompras.models.Usuario;


public interface UsuarioMongoRepository extends CrudRepository<Usuario, String>{

}
