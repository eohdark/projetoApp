import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/screens/esqueci_senha/forgot_password.dart';
import 'package:projeto_super_magasin/screens/home/componentes/size_config.dart';

import '../constans.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Nao tem conta?",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => {},
        //Navigator.popAndPushNamed(context, ForgotPasswordScreen.rotaName),
          child: Text(
            "Criar",
            style: TextStyle(fontSize: getProportionateScreenWidth(16), color: kPrimaryColor,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}