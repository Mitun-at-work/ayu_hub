import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  final String bookCoverImage;
  const BookImage({super.key, required this.bookCoverImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        image: DecorationImage(
          image: CachedNetworkImageProvider(bookCoverImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
