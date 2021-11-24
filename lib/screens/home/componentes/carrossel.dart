import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/models/produto.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "",
    home: Carrossel(),
  ));
}

class Carrossel extends StatelessWidget {

  const Carrossel({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 150,
          width: 300,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: false,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 5.0,
            dotIncreasedColor: Colors.grey,
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.topRight,
            dotVerticalPadding: 8.0,
            showIndicator: true,
            indicatorBgPadding: 1.0,
            images: [
              Image.asset("assets/images/camiseta_feminina_lunar.jpg"),
              Image.asset("assets/images/camiseta_masculina_lunar.jpg"),
              Image.asset("assets/images/conjunto_star.jpg"),
            ],
          )
        ),
      ),
    );
  }
}
