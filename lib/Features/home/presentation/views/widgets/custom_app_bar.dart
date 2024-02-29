import 'package:book_store/core/utils/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Row(
        children: [
          Image.asset(
            AssetsPath.logo,
            height: 56,
            color: Colors.white,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(
                '/searchView',
              );
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
          ),
        ],
      ),
    );
  }
}
