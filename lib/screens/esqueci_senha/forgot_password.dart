import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/screens/esqueci_senha/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String rotaName = "/forgot_password";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esqueci a senha"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}

