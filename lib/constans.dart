import 'package:flutter/material.dart';

const kTextColor = Color(0xFF535353);
const kTextLighColor = Color(0xFFACACAC); // texto ja pag principal

const kDefaultPadding = 20.0;

//const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryColor = Colors.black; // texto login
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
//const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);


// para errors
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Entre com seu Email";
const String kInvalidEmailError = "Entre com seu Email Para Validar";
const String kPassNullError = "Entre com a senha";
const String kShortPassError = "Senha muito Curta";
const String kMatchPassError = "A senha nao coincidem";
const String kNamelNullError = "Entre com seu nome";
const String kPhoneNumberNullError = "Entre com seu telefone";
const String kAddressNullError = "Entre com seu endereco";
