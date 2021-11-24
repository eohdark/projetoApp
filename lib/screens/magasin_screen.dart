import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/screens/home/componentes/body_magasin.dart';
import 'package:projeto_super_magasin/screens/home/componentes/size_config.dart';

class MagasinScreen extends StatelessWidget {
  static String rotaName = "/bodyMagasin";
  const MagasinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // aqui eu devo chamar minhas imagens


    return Scaffold(
      body: BodySuper(),
    );
  }
}
