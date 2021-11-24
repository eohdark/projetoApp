import 'package:flutter/material.dart';

import '../../../constans.dart';

class QtdCompra extends StatefulWidget {
  const QtdCompra({Key? key}) : super(key: key);

  @override
  _QtdCompraState createState() => _QtdCompraState();
}

class _QtdCompraState extends State<QtdCompra> {
  int nItens = 1; // quantidade de itens no carrinho

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _outLineButton(
            icon: Icons.remove,
            press: () {
              if (nItens > 1) {
                setState(() {
                  nItens--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            // se a qtd de itens for decimais, comecar 01, 02, 03 e por ai vai
            nItens.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6!,
          ),
        ),
        _outLineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              nItens++;
            });
          },
        )
      ],
    );
  }

  SizedBox _outLineButton({required IconData icon, required Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: () => press(),
        child: Icon(icon),
      ),
    );
  }
}
