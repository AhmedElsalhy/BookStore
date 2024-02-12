import 'package:book_store/core/utils/assets_paths.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetsPath.logo,
          color: Colors.white,
          height: 200,
          width: 200,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Discover the Magic of Books...',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
