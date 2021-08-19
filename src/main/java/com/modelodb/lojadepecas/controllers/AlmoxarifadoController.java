package com.modelodb.lojadepecas.controllers;

import com.modelodb.lojadepecas.model.*;
import com.modelodb.lojadepecas.repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/")
public class AlmoxarifadoController {
  /**
   * Classe de padrão controller que liga a interface visual aos serviços que recuperam e gravam dados em banco de dados
   * @author Grupo Trabalho Banco de dados 2
   */

  @Autowired
  private TipoPecaRepository tipoPecaRepository;
  @Autowired
  private ClienteRepository clienteRepository;
  @Autowired
  private CorredorRepository corredorRepository;
  @Autowired
  private ReceptaculoRepository receptaculoRepository;
  @Autowired
  private PecaRepository pecaRepository;

  /**
   * Método que retorna a tela inicial da aplicação
   * @return
   */
  @RequestMapping("/")
  public  String getIndex() {
    return "index";
  }

  /**
   * Método que recupera dados e carrega a view de recebimento de peças
   * @param model
   * @return
   */
  @GetMapping("recebimento-pecas")
  public  String recebimentoPecas(Model model) {
    model.addAttribute("tiposPeca", tipoPecaRepository.findAll());
    model.addAttribute("pecas", pecaRepository.findAll());
    return "recebimento-pecas";
  }

  /**
   * Método que recupera dados e carrega a view de distribuição para receptaculos
   * @param model
   * @return
   */
  @GetMapping("estoca-receptaculo")
  public  String estocaReceptaculo(Model model) {
    model.addAttribute("tiposPeca", tipoPecaRepository.findAll());
    model.addAttribute("receptaculos", receptaculoRepository.findAll());
    return "estoca-receptaculo";
  }

  /**
   * Método que recupera dados e carrega a view de pedido de peças
   * @param model
   * @return
   */
  @GetMapping("pedido-pecas")
  public  String pedidoPecas(Model model) {
    model.addAttribute("tiposPeca", tipoPecaRepository.findAll());
    model.addAttribute("pecas", pecaRepository.findAll());
    return "pedido-pecas";
  }

  /**
   * Método que recupera dados e carrega a view de cadastramento de tipos de peça
   * @param model
   * @return
   */
  @GetMapping("cadastra-tipo-peca")
  public  String cadastraTipoPeca(Model model) {
    model.addAttribute("tiposPeca", tipoPecaRepository.findAll());
    return "cadastra-tipo-peca";
  }


  /**
   * Método que recupera dados e carrega a view de cadastramento de clientes
   * @param model
   * @return
   */
  @GetMapping("cadastra-cliente")
  public  String cadastraCliente(Model model) {
    model.addAttribute("clientes", clienteRepository.findAll());
    return "cadastra-cliente";
  }

  /**
   * Método que recupera dados e carrega a view de cadastramento de corredores
   * @param model
   * @return
   */
  @GetMapping("cadastra-corredor")
  public  String cadastraCorredor(Model model) {
    model.addAttribute("corredores", corredorRepository.findAll());
    return "cadastra-corredor";
  }

  /**
   * Método que recupera dados e carrega a view de cadastro de receptaculo
   * @param model
   * @return
   */
  @GetMapping("cadastra-receptaculo")
  public  String cadastraReceptaculo(Model model) {
    model.addAttribute("receptaculos",receptaculoRepository.findAll());
    model.addAttribute("corredores",corredorRepository.findAll());
    return "cadastra-receptaculo";
  }


  /**
   * Método que realiza a gravação em banco de dados do tipo de peça
   * @param tipoPeca
   * @return
   */
  @PostMapping(value = "salva-tipo-peca")
  public  String salvaTipoPeca(TipoPeca tipoPeca) {
    tipoPecaRepository.save(tipoPeca);
    return "redirect:/cadastra-tipo-peca";
  }

  /**
   * Método que realiza a gravação em banco de dados de clientes
   * @param cliente
   * @return
   */
  @PostMapping(value = "salva-cliente")
  public  String salvaCliente(Cliente cliente) {
    clienteRepository.save(cliente);
    return "redirect:/cadastra-cliente";
  }

  /**
   * Método que realiza a gravação em banco de dados de corredores
   * @param corredor
   * @return
   */
  @PostMapping(value = "salva-corredor")
  public  String salvaCorredor(Corredor corredor) {
    corredorRepository.save(corredor);
    return "redirect:/cadastra-corredor";
  }

  /**
   * Método que realiza a gravação em banco de dados de receptaculo
   * @param receptaculo
   * @return
   */
  @PostMapping(value = "salva-receptaculo")
  public  String salvaReceptaculo(Receptaculo receptaculo) {

    var receptaculoSalvo = receptaculoRepository.save(receptaculo);
    receptaculoSalvo.setCorredorReceptaculo(receptaculoSalvo.getCorredor().getId()+"-"+receptaculoSalvo.getId());
    receptaculoRepository.save(receptaculoSalvo);
    return "redirect:/cadastra-receptaculo";
  }


  /**
   * Método que realiza a gravação em banco de dados de chegadaa de peças
   * @param entregaDTO
   * @return
   */
  @PostMapping(value = "salva-chegada-pecas")
  public  String salvaChegadaPecas(EntregaDTO entregaDTO) {

    for(int i=0; i < entregaDTO.getQuantidade(); i++){
      pecaRepository.save(entregaDTO.toPeca());
    }

    return "redirect:/recebimento-pecas";
  }

  /**
   * Método que realiza a gravação em banco de dados de estoque em receptaculo
   * @param receptaculoDTO
   * @return
   */
  @PostMapping(value = "salva-estoca-receptaculo")
  public  String salvaEstocaReceptaculo(ReceptaculoDTO receptaculoDTO) {
    List<Peca> pecas = new ArrayList<Peca>();
    for(int i=0; i < receptaculoDTO.getQuantidade(); i++){
      pecaRepository.save(receptaculoDTO.toPeca());
    }
    return "redirect:/estoca-receptaculo";
  }

  /**
   * Método que realiza a gravação em banco de dados de pedido de peças
   * @param pedidoDTO
   * @return
   */
  @PostMapping(value = "salva-pedido-pecas")
  public  String salvaPedidoPecas(PedidoDTO pedidoDTO) {

    for(int i=0; i < pedidoDTO.getQuantidade(); i++){
      pecaRepository.save(pedidoDTO.toPeca());
    }

    return "redirect:/pedido-pecas";
  }

}
