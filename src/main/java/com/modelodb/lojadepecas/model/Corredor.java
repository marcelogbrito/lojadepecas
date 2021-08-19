package com.modelodb.lojadepecas.model;

import javax.persistence.*;
import java.util.List;

/**
 * Classe model que representa a entidade de banco de dados Corredor
 */
@Entity
public class Corredor {
  @Id
  @GeneratedValue
  private Integer id;
  private String descricao;
  @OneToMany(fetch = FetchType.LAZY, mappedBy = "corredor")
  private List<Receptaculo> receptaculos;

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getDescricao() {
    return descricao;
  }

  public void setDescricao(String descricao) {
    this.descricao = descricao;
  }

  public List<Receptaculo> getReceptaculos() {
    return receptaculos;
  }

  public void setReceptaculos(List<Receptaculo> receptaculos) {
    this.receptaculos = receptaculos;
  }
}
