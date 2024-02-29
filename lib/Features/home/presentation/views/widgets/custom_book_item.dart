import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView', extra: bookModel);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.9 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
            ),
          ),
        ),
      ),
    );
  }
}
