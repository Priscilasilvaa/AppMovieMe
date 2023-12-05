import 'package:flutter/material.dart';
import 'package:movieme/src/auth/componets/custom_text_field.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:movieme/src/auth/sing_up_screen.dart';
import 'package:movieme/src/base/screen_base.dart';
import 'package:movieme/src/config/custom_colors.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.custtomSwatchColor,
      body: Column(
        children: [
//Logo
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //nome do app
                const Text.rich(
                  TextSpan(
                      style: TextStyle(
                        fontSize: 40,
                      ),
                      children: [
                        TextSpan(
                          text: 'Movie',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                            text: 'Me',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                            ))
                      ]),
                ),

                //categorias
                SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('Series'),
                        FadeAnimatedText('Filmes'),
                        FadeAnimatedText('Documentários'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

//formulario

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //email
                const CustomTextFields(
                  icon: Icons.email,
                  label: 'Email',
                ),

                //senha
                const CustomTextFields(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,

//botao de entrar
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (c) {
                        return const ScreenBase();
                      }));
                    },
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),

//botao esqueceu a senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Esqueceu sua senha?',
                    ),
                  ),
                ),
//DIvisor
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color(0xFF0D0021),
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xFF0D0021),
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
//Botao cadastro
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFF1D004B),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (c) {
                          return const SignUpScreen();
                        }),
                      );
                    },
                    child: const Text(
                      'Criar uma conta',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
