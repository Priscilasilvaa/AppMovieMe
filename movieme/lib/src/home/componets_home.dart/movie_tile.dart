import 'package:flutter/material.dart';
import 'package:movieme/src/config/custom_colors.dart';
import 'package:movieme/src/models.dart/item.model.dart';

class MovieTile extends StatelessWidget {
  const MovieTile({super.key, required this.items});

  final ItemModel items;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: CustomColor.custtomSwatchColor,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //Imagem:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      items.linkImagem,
                      fit: BoxFit.contain,
                    ),
                  ),

                  //texto
                  Text(
                    items.nome,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  //genero
                  Text(
                    items.genero,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ]),
          ),
        ),
        Positioned(
            top: 245,
            right: 4,
            child: GestureDetector(
              onTap: () {},
              child: const SizedBox(
                height: 40,
                width: 35,
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            )),
      ],
    );
  }
}
