import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AyurvedhaBookCover extends StatelessWidget {
  const AyurvedhaBookCover({
    super.key,
    required this.bookCoverImage,
  });

  final String bookCoverImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(.1),
        image: DecorationImage(
          image: CachedNetworkImageProvider(bookCoverImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
