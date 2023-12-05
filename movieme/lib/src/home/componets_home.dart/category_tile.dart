import 'package:flutter/material.dart';
import 'package:movieme/src/config/custom_colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile(
      {super.key,
      required this.category,
      required this.isSelected,
      required this.onPressed});

  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isSelected ? Colors.white : Colors.transparent,
          ),
          child: Text(
            category,
            style: TextStyle(
              color: isSelected ? CustomColor.custtomSwatchColor : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: isSelected ? 16 : 16,
            ),
          ),
        ),
      ),
    );
  }
}
