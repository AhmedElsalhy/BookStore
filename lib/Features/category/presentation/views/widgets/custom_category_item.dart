import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({super.key, required this.imagePath, this.onTap});

  final String imagePath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.9 / 4,
          child: Image.asset(
            imagePath,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
