import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/models/produto.dart';

import '../../../constans.dart';

// nessa classe aqui, e onde iremos trabalhar os atributos das cores, e do tamanho nas informacoes da imagem
class CorETamanho extends StatelessWidget {
  const CorETamanho({
    Key? key,
    required this.produto,
  }) : super(key: key);

  final Produto produto;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            // esse star é para referenciar o texto, para ficar no inicio
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  // aqui vemos as 3 cores que foram declaradas como padrao
                  // no primeiro ponto, vemos a cor preta como padrao, para alterar basta mudar as cores em hexadecimais
                  // o isSelected esta definido como true, para que ele automaticamente seja, selecionado
                  PontosDeCores(
                      color: Colors.black,
                      isSelected: true),
                  PontosDeCores(color: Colors.grey),
                  PontosDeCores(color: Colors.blue),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(text: "Tamanho\n"),
                TextSpan(
                    text: "${produto.tamanho}",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold))
              ],
            ),
          ),
        )
      ],
    );
  }
}

// nessa classe de PontosDeCores e para definir o layout dos pontos, inclusive criar uma condicao para saber se se a cor ja esta selecionada
class PontosDeCores extends StatelessWidget {
  final Color color;

  //o padrao do eSelecionado e false
  // devo definir a selecao da cor como bool, para poder funcionar,
  final bool isSelected;

  const PontosDeCores({
    Key? key,
    required this.color,
    // tenho que definir como falso, para poder funcionar
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      // essa margin aqui, serve para definir o espacamento do texto cor, junto com os pontos
      EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      // esse padding, serve para criar um espacamento da cor com a borda, se tirar irar ver a diferenca
      padding: EdgeInsets.all(2.5),
      height: 24,
      // altura do botao
      width: 24,
      // largura do botao
      decoration: BoxDecoration(
        // bordar arredondada
        shape: BoxShape.circle,
        border: Border.all(
          // a cor esta selecionada? se sim aparecer selecionado, senao transparente
          color: isSelected
              ? color
              : Colors
              .transparent, // aqui criamos a condicao para saber se a cor esta selecionada, se estiver blz, senao ficar transparente
        ),
      ),
      // esse child esta pegando as 3 cores
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}