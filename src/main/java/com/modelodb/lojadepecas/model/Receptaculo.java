package com.modelodb.lojadepecas.model;

import javax.persistence.*;

/**
 * Classe model que representa a entidade de banco de dados Receptaculo
 */
@Entity
public class Receptaculo {


  @Id
  @GeneratedValue
  private Integer id;
  private String corredorReceptaculo;
  @ManyToOne
  private Corredor corredor;

  public String getCorredorReceptaculo() {
    return corredorReceptaculo;
  }

  public void setCorredorReceptaculo(String corredorReceptaculo) {
    this.corredorReceptaculo = corredorReceptaculo;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public Corredor getCorredor() {
    return corredor;
  }

  public void setCorredor(Corredor corredor) {
    this.corredor = corredor;
  }
}
