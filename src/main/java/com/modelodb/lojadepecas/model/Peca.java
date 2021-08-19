package com.modelodb.lojadepecas.model;

import javax.persistence.*;
import java.time.LocalDateTime;

/**
 * Classe model que representa a entidade de banco de dados Peça
 */
@Entity
public class Peca {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;
  @OneToOne
  private TipoPeca tipoPeca;
  @Enumerated(EnumType.STRING)
  private Situacao situacao;
  @Column(columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
  private LocalDateTime dataHoraEntrada;
  @Column(columnDefinition = "TIMESTAMP")
  private LocalDateTime dataHoraReceptaculo;
  @Column(columnDefinition = "TIMESTAMP")
  private LocalDateTime dataHoraSaida;
  @OneToOne
  private Receptaculo receptaculo;
  @OneToOne
  private Cliente clienteComprador;

  public Peca(TipoPeca tipoPeca, Receptaculo receptaculo, Situacao receptaculo1) {
    this.tipoPeca = tipoPeca;
    this.receptaculo = receptaculo;
    this.situacao = situacao;
  }

  public Cliente getClienteComprador() {
    return clienteComprador;
  }

  public void setClienteComprador(Cliente clienteComprador) {
    this.clienteComprador = clienteComprador;
  }

  public Peca(TipoPeca tipoPeca, Situacao situacao) {
    this.tipoPeca = tipoPeca;
    this.situacao = situacao;
    //System.out.println(tipoPeca);
  }

  public Peca() {
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public TipoPeca getTipoPeca() {
    return tipoPeca;
  }

  public void setTipoPeca(TipoPeca tipoPeca) {
    this.tipoPeca = tipoPeca;
  }

  public Situacao getSituacao() {
    return situacao;
  }

  public void setSituacao(Situacao situacao) {
    this.situacao = situacao;
  }

  public LocalDateTime getDataHoraEntrada() {
    return dataHoraEntrada;
  }

  public void setDataHoraEntrada(LocalDateTime dataHoraEntrada) {
    this.dataHoraEntrada = dataHoraEntrada;
  }

  public LocalDateTime getDataHoraReceptaculo() {
    return dataHoraReceptaculo;
  }

  public void setDataHoraReceptaculo(LocalDateTime dataHoraReceptaculo) {
    this.dataHoraReceptaculo = dataHoraReceptaculo;
  }

  public LocalDateTime getDataHoraSaida() {
    return dataHoraSaida;
  }

  public void setDataHoraSaida(LocalDateTime dataHoraSaida) {
    this.dataHoraSaida = dataHoraSaida;
  }

  public Receptaculo getReceptaculo() {
    return receptaculo;
  }

  public void setReceptaculo(Receptaculo receptaculo) {
    this.receptaculo = receptaculo;
  }
}
