import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      color: Colors.red.withOpacity(.1),
      width: 180,
    );
  }
}
