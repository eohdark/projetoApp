import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/screens/login/components/body.dart';

class InscreverTela extends StatelessWidget {
  static String rotaName = "/inscrever_scre";
  const InscreverTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inscrever-se",),
        centerTitle: true,
      ),
      body: Body(),
      //body: Body(),
    );
  }
}
