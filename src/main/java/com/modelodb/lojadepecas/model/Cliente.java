package com.modelodb.lojadepecas.model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Classe model que representa a entidade de banco de dados Cliente
 */
@Entity
public class Cliente {
  @Id
  private Long cnpj;
  private String nome;
  private String endereco;
  private String telefone;

  public Long getCnpj() {
    return cnpj;
  }

  public void setCnpj(Long cnpj) {
    this.cnpj = cnpj;
  }

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public String getEndereco() {
    return endereco;
  }

  public void setEndereco(String endereco) {
    this.endereco = endereco;
  }

  public String getTelefone() {
    return telefone;
  }

  public void setTelefone(String telefone) {
    this.telefone = telefone;
  }
}
