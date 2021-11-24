import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projeto_super_magasin/screens/details/components/qtd_carrinho.dart';

class ContadorComFavBar extends StatelessWidget {
  const ContadorComFavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QtdCompra(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              color: Color(0xFFFF6464),
              shape: BoxShape.circle),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        ),
      ],
    );
  }
}