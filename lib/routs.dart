

import 'package:flutter/widgets.dart';
import 'package:projeto_super_magasin/screens/esqueci_senha/forgot_password.dart';
import 'package:projeto_super_magasin/screens/login_success/login_success_screen.dart';
import 'package:projeto_super_magasin/screens/magasin_screen.dart';

import 'screens/login/inscrever_scree.dart';

// Colocar os nomes de todas as rotas que iremos utilizar aqui
final Map<String, WidgetBuilder> routs = {
  MagasinScreen.rotaName: (context) => MagasinScreen(),
  InscreverTela.rotaName: (context) => InscreverTela(),
  ForgotPasswordScreen.rotaName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.rotaName: (context) => LoginSuccessScreen(),
  //HomePage.rotaName: (context) => HomePage(),

};