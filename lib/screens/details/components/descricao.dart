import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/models/produto.dart';

import '../../../constans.dart';

class Descricao extends StatelessWidget {
  const Descricao({
    Key? key,
    required this.produto,
  }) : super(key: key);

  final Produto produto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(produto.description, style: TextStyle(height: 1.5),),
    );
  }
}