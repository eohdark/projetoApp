import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/screens/home/componentes/size_config.dart';

import '../../../constans.dart';

class MagasinContent extends StatelessWidget {
  const MagasinContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "SuperMagasin!",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text, textAlign: TextAlign.center,),
        Spacer(
          flex: 1,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}