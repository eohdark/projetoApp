import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projeto_super_magasin/constans.dart';
import 'package:projeto_super_magasin/models/produto.dart';
import 'package:projeto_super_magasin/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Produto produto;

  const DetailsScreen({Key? key, required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // quando o produto houver uma cor #nesse caso nao irei usar pois esta azul
      backgroundColor: produto.color,
      appBar: buildAppBar(context),
      body: Body(produto: produto,), // devo puxar o body do components aqui, para que funcione
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      // esse aqui e da msm forma
      backgroundColor: produto.color,
      elevation: 50, // esse aqui e a sombra que faz na barra
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2,)
      ],
    );
  }
}
