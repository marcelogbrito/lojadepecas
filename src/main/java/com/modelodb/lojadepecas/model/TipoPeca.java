package com.modelodb.lojadepecas.model;

import javax.persistence.*;

/**
 * Classe model que representa a entidade de banco de dados Tipo de peça
 */
@Entity
public class TipoPeca {
  @Id
  private Integer upc;
  @Column(unique = true)
  @GeneratedValue
  private Integer numero;
  private String descricao;

  public Integer getUpc() {
    return upc;
  }

  public void setUpc(Integer upc) {
    this.upc = upc;
  }

  public Integer getNumero() {
    return numero;
  }

  public void setNumero(Integer numero) {
    this.numero = numero;
  }

  public String getDescricao() {
    return descricao;
  }

  public void setDescricao(String descricao) {
    this.descricao = descricao;
  }
}
