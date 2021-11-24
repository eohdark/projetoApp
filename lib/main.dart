import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/routs.dart';
import 'package:projeto_super_magasin/screens/home/componentes/body.dart';

import 'package:projeto_super_magasin/screens/magasin_screen.dart';
import 'package:projeto_super_magasin/screens/theme.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Super Magasin",
      theme: theme(),
      //home: HomePage(),
      //home: SplashScreen(),
      initialRoute: MagasinScreen.rotaName,
      routes: routs,
    );
  }
}


