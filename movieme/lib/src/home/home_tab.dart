import 'package:flutter/material.dart';
import 'package:movieme/src/config/app_data.dart' as app_data;
import 'package:movieme/src/config/custom_colors.dart';
import 'package:movieme/src/home/componets_home.dart/category_tile.dart';
import 'package:movieme/src/home/componets_home.dart/movie_tile.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

List<String> categorias = [
  'Terror',
  'Comédia',
  'Animação',
  'Romance',
  'Aventura',
  'Ficção Científica',
  'Drama',
];

class _HomeTabState extends State<HomeTab> {
  String selectedCategory = 'Terror';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // app bar
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
                  ))
            ]),
          ),
        ),
        //pesquisa

        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      isDense: true,
                      hintText: 'Buscar...',
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: CustomColor.custtomSwatchColor,
                        size: 20,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ))),
                )),

            //Categorias

            Container(
              padding: const EdgeInsets.only(left: 20, right: 5),
              height: 40,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return CategoryTile(
                      onPressed: () {
                        setState(() {
                          selectedCategory = categorias[index];
                        });
                      },
                      category: categorias[index],
                      isSelected: categorias[index] == selectedCategory,
                    );
                  },
                  separatorBuilder: (_, index) => const SizedBox(
                        width: 10,
                      ),
                  itemCount: categorias.length),
            ),
            //Grid
            Expanded(
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
                  }),
            ),
          ],
        ));
  }
}
