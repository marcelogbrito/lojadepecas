package com.modelodb.lojadepecas.repositories;

import com.modelodb.lojadepecas.model.TipoPeca;
import org.springframework.data.repository.CrudRepository;

/**
 * Interface crudrepository de Tipo de peça
 */
public interface TipoPecaRepository extends CrudRepository<TipoPeca,Integer> {
}
