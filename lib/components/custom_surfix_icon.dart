import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projeto_super_magasin/screens/home/componentes/size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        // proporcional ao tamanho/largura
        0,
        getProportionateScreenWidth(15),

        getProportionateScreenWidth(15),
        getProportionateScreenWidth(15),
      ),
      child: SvgPicture.asset(
        svgIcon,
        width: getProportionateScreenWidth(18),
      ), // proporcional ao geral
    );
  }
}
