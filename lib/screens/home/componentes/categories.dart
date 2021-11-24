import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/constans.dart';

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  List<String> categorias = ["Blusas", "Camisas","Calçados", "Shorts"]; // essa lista aqui, serve para deixar uma barra de pesquisa ja definida
  int selecionarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index) => buildCategories(index),
        )
      ),
    );
  }

  buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selecionarIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categorias[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selecionarIndex == index ? kTextColor : kTextColor, // o primeiro item ja e selecionado por padrao
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 5), // margem do topo
              height: 2,
              width: 50,
              color: selecionarIndex == index ? Colors.black : Colors.transparent, //se o item selecionado for igual o intex, mudar a cor, senao ficar transparente
            )
          ],
        ),
      ),
    );
  }
}
