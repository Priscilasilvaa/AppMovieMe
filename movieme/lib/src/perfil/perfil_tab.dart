import 'package:flutter/material.dart';
import 'package:movieme/src/auth/sign_in_screen.dart';

class PerfilTab extends StatelessWidget {
  const PerfilTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Perfil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_outlined),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (c) {
                return const SigninScreen();
              }));
            },
          )
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto
            CircleAvatar(
              radius: 60.0,
              backgroundImage: NetworkImage(
                'https://pm1.aminoapps.com/7131/55053708b2c91686779dcc069a096359b6ea52e0r1-540-439v2_uhq.jpg',
              ),
            ),
            SizedBox(height: 20.0),

            // Nome do usuário
            Text(
              'Nome do Usuário',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),

            // Email (dados de login)
            Text(
              'usuario@example.com', // Substitua pelo email do usuário
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
