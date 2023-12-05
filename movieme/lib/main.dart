import 'package:flutter/material.dart';
import 'package:movieme/src/auth/sign_in_screen.dart';
import 'package:movieme/src/config/custom_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: CustomColor.custtomSwatchColor,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0D0021)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SigninScreen(),
    );
  }
}
