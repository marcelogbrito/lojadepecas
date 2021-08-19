package com.modelodb.lojadepecas.repositories;

import com.modelodb.lojadepecas.model.Receptaculo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

/**
 * Interface crudrepository de Receptaculo
 */
public interface ReceptaculoRepository extends JpaRepository<Receptaculo, Integer> {
}
