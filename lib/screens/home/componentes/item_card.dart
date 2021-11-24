import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/constans.dart';
import 'package:projeto_super_magasin/models/produto.dart';

class ItemCard extends StatelessWidget {
  final Produto produto;
  final void Function() press; // devo passar final void function() pois se colocar final nao funciona, e precisa colocar o requerimento tbm

  const ItemCard({Key? key, required this.produto, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              //height: 250,
              //width: 250,
              decoration: BoxDecoration(
                  //color: produto.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(produto.image),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
              child: Text(
                // esse produto e apenas uma demo da lista
                produto.title,
                style: TextStyle(color: kTextLighColor),
              ),
            ),
            Text(
              // aqui devo colocar o precos
              "\RS ${produto.preco}",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],

      ),
    );
  }
}
