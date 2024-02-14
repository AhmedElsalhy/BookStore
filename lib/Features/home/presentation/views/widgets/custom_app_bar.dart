import 'package:book_store/core/utils/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Row(
        children: [
          Image.asset(
            AssetsPath.logo,
            height: 48,
            color: Colors.white,
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
          )
        ],
      ),
    );
  }
}
