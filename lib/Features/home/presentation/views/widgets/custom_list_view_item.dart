import 'package:book_store/core/utils/assets_paths.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 1.3 / 2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsPath.logo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
