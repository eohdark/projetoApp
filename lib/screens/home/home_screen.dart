import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projeto_super_magasin/constans.dart';
import 'package:projeto_super_magasin/screens/home/componentes/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      //elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg", // aqui eu devo ver como que faz para adicionar os icones em svg URGENTE
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg", // aqui eu devo ver como que faz para adicionar os icones em svg URGENTE
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg", // aqui eu devo ver como que faz para adicionar os icones em svg URGENTE
            // a cor padrao do icone e branco
            color: kTextColor,
          ),
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
