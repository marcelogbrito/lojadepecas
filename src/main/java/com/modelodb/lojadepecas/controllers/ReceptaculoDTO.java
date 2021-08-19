package com.modelodb.lojadepecas.controllers;

import com.modelodb.lojadepecas.model.Peca;
import com.modelodb.lojadepecas.model.Receptaculo;
import com.modelodb.lojadepecas.model.Situacao;
import com.modelodb.lojadepecas.model.TipoPeca;

/**
 * Classe padrão DTO para trasnferência de dados de distribuição de peças para almoxarifado
 */
public class ReceptaculoDTO {

  private TipoPeca tipoPeca;
  private Receptaculo receptaculo;
  private Integer quantidade;

  public Integer getQuantidade() {
    return quantidade;
  }

  public void setQuantidade(Integer quantidade) {
    this.quantidade = quantidade;
  }

  public TipoPeca getTipoPeca() {
    return tipoPeca;
  }

  public void setTipoPeca(TipoPeca tipoPeca) {
    this.tipoPeca = tipoPeca;
  }

  public Receptaculo getReceptaculo() {
    return receptaculo;
  }

  public void setReceptaculo(Receptaculo receptaculo) {
    this.receptaculo = receptaculo;
  }

  public Peca toPeca() {
    return new Peca(tipoPeca, receptaculo, Situacao.RECEPTACULO);
  }
}
