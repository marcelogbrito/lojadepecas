package com.modelodb.lojadepecas.repositories;

import com.modelodb.lojadepecas.model.Cliente;
import org.springframework.data.repository.CrudRepository;

/**
 * Interface crudrepository de Clientes
 */
public interface ClienteRepository extends CrudRepository<Cliente, Long> {
}
