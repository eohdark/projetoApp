import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/screens/home/componentes/size_config.dart';

import '../constans.dart';

class BotaoPadrao extends StatelessWidget {
  const BotaoPadrao({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
            backgroundColor: kPrimaryColor
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}