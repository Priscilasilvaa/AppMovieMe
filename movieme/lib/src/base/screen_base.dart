import 'package:flutter/material.dart';
import 'package:movieme/src/Favorites/favorite_tab.dart';
import 'package:movieme/src/config/custom_colors.dart';
import 'package:movieme/src/home/home_tab.dart';
import 'package:movieme/src/perfil/perfil_tab.dart';

class ScreenBase extends StatefulWidget {
  const ScreenBase({super.key});

  @override
  State<ScreenBase> createState() => _ScreenBaseState();
}

class _ScreenBaseState extends State<ScreenBase> {
  int currentIndex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const HomeTab(),
          const FavoriteTab(),
          Container(
            color: CustomColor.custtomSwatchColor,
            child: const PerfilTab(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 75, 14, 86),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
