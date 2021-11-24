import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/constans.dart';
import 'package:projeto_super_magasin/models/produto.dart';
import 'package:projeto_super_magasin/screens/details/components/add_car.dart';
import 'package:projeto_super_magasin/screens/details/components/contador_com_fav.dart';
import 'package:projeto_super_magasin/screens/details/components/cor_e_tamanho.dart';
import 'package:projeto_super_magasin/screens/details/components/descricao.dart';
import 'package:projeto_super_magasin/screens/details/components/produto_titulo_imagem.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.produto}) : super(key: key);
  final Produto produto;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // esse aqui usa 100% do screen da tela
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  //height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      // esse row aqui serve para podermos criar as bolinhas de selecao das cores da roupa
                      CorETamanho(produto: widget.produto),
                      SizedBox(height: kDefaultPadding / 2),
                      Descricao(produto: widget.produto),
                      SizedBox(height: kDefaultPadding / 2),
                      ContadorComFavBar(),
                      SizedBox(height: kDefaultPadding / 2),
                      AddCar()
                    ],
                  ),
                ),
                ProdutoTituloComImagem(produto: widget.produto)
              ],
            ),
          )
        ],
      ),
    );
  }
}
