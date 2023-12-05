import 'package:flutter/material.dart';
import 'package:movieme/src/auth/componets/custom_text_field.dart';
import 'package:movieme/src/base/screen_base.dart';
import 'package:movieme/src/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

//titulo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.custtomSwatchColor,
        body: Column(children: [
          const Expanded(
            child: Center(
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
          ),

//form

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CustomTextFields(
                  icon: Icons.email,
                  label: 'Email',
                ),
                const CustomTextFields(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),
                const CustomTextFields(
                  icon: Icons.person,
                  label: 'Nome',
                ),

                //botao de cadastro
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (c) {
                        return const ScreenBase();
                      }));
                    },
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
