import 'package:flutter/material.dart';
import 'package:movieme/src/config/custom_colors.dart';
import 'package:movieme/src/config/app_data.dart' as app_data;
import 'package:movieme/src/home/componets_home.dart/movie_tile.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({super.key});

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.custtomSwatchColor,
        centerTitle: true,
        title: const Text.rich(
          TextSpan(style: TextStyle(fontSize: 30), children: [
            TextSpan(
              text: 'Movie',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'Me',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            )
          ]),
        ),
      ),
      body: Expanded(
        child: GridView.builder(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 9 / 15,
          ),
          itemCount: app_data.items.length,
          itemBuilder: (_, index) {
            return MovieTile(
              items: app_data.items[index],
            );
          },
        ),
      ),
    );
  }
}
