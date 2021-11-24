import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/constans.dart';
import 'package:projeto_super_magasin/models/produto.dart';
import 'package:projeto_super_magasin/screens/details/details_screen.dart';
import 'package:projeto_super_magasin/screens/home/componentes/categories.dart';
import 'package:projeto_super_magasin/screens/home/componentes/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Super Magasin",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold), // alterar para um futuro nome
          ),
        ),
        Categorias(),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: produtos.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.60,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
              ),
              itemBuilder: (context, index) => ItemCard(
                produto: produtos[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(produto: produtos[index]),
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
