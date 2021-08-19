package com.modelodb.lojadepecas.repositories;


import com.modelodb.lojadepecas.model.Peca;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Interface crudrepository de Peças
 */
public interface PecaRepository extends JpaRepository<Peca, Integer> {

}
