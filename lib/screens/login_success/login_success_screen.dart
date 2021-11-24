import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String rotaName = "/login_success";
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:SizedBox(),
        title: Text("Login com Sucesso"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
