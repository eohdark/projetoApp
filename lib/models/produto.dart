
import 'package:flutter/material.dart';

class Produto {
  final String image, title, description, tamanho;
  final int id, size;
  final Color color;
  final double preco;

  Produto({
    required this.id,
    required this.image,
    required this.title,
    required this.preco,
    required this.description,
    required this.tamanho,
    required this.size,
    required this.color,
  });
}

List<Produto> produtos = [
  Produto(
      id: 1,
      title: "Camisa Lunar Masculina",
      preco: 90.99,
      tamanho: "G",
      size: 0,
      description: lunar,
      image: "assets/images/camiseta_masculina_lunar.jpg", // aqui devo colocar a imagem correspondente ao item
      color: Colors.grey), // aqui devo colocar algumas images correspondente ao item, se nao houver nao colocar
  Produto(
      id: 2,
      title: "Conjunto Star Pijama",
      preco: 305.99,
      tamanho: "M",
      size: 0,
      description: start,
      image: "assets/images/conjunto_star.jpg", // aqui devo colocar a imagem correspondente ao item
      color: Colors.grey),
  Produto(
      id: 3,
      title: "Vestido Sexy Simples",
      preco: 90.99,
      tamanho: "M",
      size: 0,
      description: crissCross,
      image: "assets/images/criss_cross_simples.jpg", // aqui devo colocar a imagem correspondente ao item
      color: Colors.grey),
  Produto(
      id: 4,
      title: "Sapatilha Black",
      preco: 65.99,
      tamanho: "37",
      size: 37, // aqui referente ao tamanho, se necessario mudar para string
      description: sapblack,
      image: "assets/images/sapatilha_black.jpg", // aqui devo colocar a imagem correspondente ao item
      color: Colors.grey), // aqui devo colocar algumas images correspondente ao item, se nao houver nao colocar
  Produto(
      id: 5,
      title: "Salto alto Black Vizz",
      preco: 75.99,
      tamanho: "36",
      size: 36, // aqui referente ao tamanho, se necessario mudar para string
      description: scarpin,
      image: "assets/images/scarpin_black.jpg", // aqui devo colocar a imagem correspondente ao item
      color: Colors.grey),
  Produto(
      id: 6,
      title: "Camisa Lunar Feminina",
      preco: 75.99,
      tamanho: "M",
      size: 36, // aqui referente ao tamanho, se necessario mudar para string
      description: femin,
      image: "assets/images/camiseta_feminina_lunar.jpg", // aqui devo colocar a imagem correspondente ao item
      color: Colors.grey),
];

String scarpin = "Salto alto preto com bico curto na parte frontal \nTecido:Couro.";
String crissCross = "Vestido sexy azul com degote frontal \nTecido:Linho,Algodão.";
String lunar ="Camiseta preta com a lua na parte frontal e escrito NASA \nTecido:Linho,Algodão.";
String sapblack ="Sapatilha preta com laçinho na parte frontal \nTecido:Couro.";
String start ="Camiseta e calça de pijama com estrelas coloridas na parte frontal e traseira \nTecido:Algodão.";
String femin ="Camiseta preta com fases de lua na parte frontal \nTecido:Linho,Algodão.";