import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(13, 0, 33, 0.1),
  100: const Color.fromRGBO(13, 0, 33, 0.2),
  200: const Color.fromRGBO(13, 0, 33, 0.3),
  300: const Color.fromRGBO(13, 0, 33, 0.4),
  400: const Color.fromRGBO(13, 0, 33, 0.5),
  500: const Color.fromRGBO(13, 0, 33, 0.6),
  600: const Color.fromRGBO(13, 0, 33, 0.7),
  700: const Color.fromRGBO(13, 0, 33, 0.8),
  800: const Color.fromRGBO(13, 0, 33, 0.9),
  900: const Color.fromRGBO(13, 0, 33, 1),
};

abstract class CustomColor {
  static const Color customContrastColor = Color.fromARGB(255, 143, 47, 211);

  static MaterialColor custtomSwatchColor =
      MaterialColor(0xFF0D0021, _swatchOpacity);
}
