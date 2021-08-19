package com.modelodb.lojadepecas.controllers;

import com.modelodb.lojadepecas.model.Peca;
import com.modelodb.lojadepecas.model.Situacao;
import com.modelodb.lojadepecas.model.TipoPeca;

/**
 * Classe padrão DTO para trasnferência de dados de pedidos de clientes
 */
public class PedidoDTO {
  private TipoPeca tipoPeca;
  private Integer quantidade;

  public TipoPeca getTipoPeca() {
    return tipoPeca;
  }

  public void setTipoPeca(TipoPeca tipoPeca) {
    this.tipoPeca = tipoPeca;
  }

  public Integer getQuantidade() {
    return quantidade;
  }

  public void setQuantidade(Integer quantidade) {
    this.quantidade = quantidade;
  }

  public Peca toPeca() {
    return new Peca(tipoPeca, Situacao.SAIDA);
  }
}
