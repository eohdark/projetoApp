import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/components/default_button.dart';
import 'package:projeto_super_magasin/constans.dart';
import 'package:projeto_super_magasin/screens/home/componentes/magasin_content.dart';
import 'package:projeto_super_magasin/screens/home/componentes/size_config.dart';
import 'package:projeto_super_magasin/screens/login/inscrever_scree.dart';

class BodySuper extends StatefulWidget {
  const BodySuper({Key? key}) : super(key: key);

  @override
  _BodySuperState createState() => _BodySuperState();
}

class _BodySuperState extends State<BodySuper> {
  int paginaAtual = 0;
  List<Map<String, String>> magasinData = [
    {
      "text": "Bem-vindo a Super Magasin",
      "image": "assets/images/logo_super.jpeg"
    },
    {
      "text": "Estamos Conectando pessoas \nPor todo o mundo",
      "image": "assets/images/conection.jpg"
    },
    {
      "text": "Mostramos o Jeito Facil de Comprar \nSem sair de casa",
      "image": "assets/images/default_padrao.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      paginaAtual = value;
                    });
                  },
                  itemBuilder: (context, index) => MagasinContent(
                    text: magasinData[index]["text"].toString(),
                    image: magasinData[index]["image"].toString(),
                  ),
                  itemCount: magasinData.length,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            magasinData.length, (index) => _dot(index: index)),
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      Expanded(
                        child: BotaoPadrao(
                          text: "Proximo",
                          press: () {
                           //Navigator.push(context, MaterialPageRoute(builder: (context) => InscreverTela()));
                            Navigator.pushNamed(context, InscreverTela.rotaName);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer _dot({int? index}) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: paginaAtual == index ? 20 : 6,
      decoration: BoxDecoration(
          color: paginaAtual == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
      duration: kAnimationDuration,
    );
  }
}
