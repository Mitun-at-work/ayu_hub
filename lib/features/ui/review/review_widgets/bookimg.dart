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
          Radius.circular(10),
        ),
        image:  DecorationImage(
          image: NetworkImage(
              bookCoverImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
