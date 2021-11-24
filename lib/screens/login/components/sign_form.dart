import 'package:flutter/material.dart';
import 'package:projeto_super_magasin/components/custom_surfix_icon.dart';
import 'package:projeto_super_magasin/components/default_button.dart';
import 'package:projeto_super_magasin/components/form_error.dart';
import 'package:projeto_super_magasin/screens/esqueci_senha/forgot_password.dart';
import 'package:projeto_super_magasin/screens/home/componentes/size_config.dart';
import 'package:projeto_super_magasin/screens/login_success/login_success_screen.dart';

import '../../../constans.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          //SizedBox(height: getProportionateScreenWidth(20)),
          _emailFormField(),
          SizedBox(height: getProportionateScreenWidth(30)),
          _passwordFormField(),
          SizedBox(height: getProportionateScreenWidth(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (valeu) {
                  setState(() {
                    remember = valeu!;
                  });
                },
              ),
              Text("Lembre-me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, ForgotPasswordScreen.rotaName),
                  child: Text(
                "Esqueci minha senha",
                style: TextStyle(decoration: TextDecoration.underline),
              ))
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenWidth(20)),
          BotaoPadrao(
            text: "Entrar",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // se as validacoes estiverem corretas, vai para tela de login sucesso
                Navigator.pushNamed(context, LoginSuccessScreen.rotaName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField _passwordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Senha",
        hintText: "Entre com a senha",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField _emailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });

        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });

        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Entre com o email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
