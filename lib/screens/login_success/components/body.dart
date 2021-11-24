import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/components/default_button.dart';
import 'package:projeto_super_magasin/screens/home/componentes/size_config.dart';
import 'package:projeto_super_magasin/screens/home/home_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          // aqui e onde fica a logo de sucesso ou algum outro logo
          "assets/images/success.png",
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.10,
        ),
        Text(
          "Login com sucesso",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Spacer(),
        SizedBox(
            width: SizeConfig.screenHeight * 0.3,
            child: BotaoPadrao(
                text: "Proximo",
                press: () {
                  //Navigator.pushNamed(context, HomePage.rotaName);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                })),
        Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
