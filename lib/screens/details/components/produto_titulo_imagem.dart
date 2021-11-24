import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/constans.dart';
import 'package:projeto_super_magasin/models/produto.dart';

class ProdutoTituloComImagem extends StatelessWidget {
  const ProdutoTituloComImagem({
    Key? key,
    required this.produto,
  }) : super(key: key);

  final Produto produto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            produto.title,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPadding,),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Preço\n"),
                  TextSpan(
                      text: "\RS ${produto.preco}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold))
                ]),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(child: Image.asset(produto.image, fit: BoxFit.fill,))
            ],
          )
        ],
      ),
    );
  }
}