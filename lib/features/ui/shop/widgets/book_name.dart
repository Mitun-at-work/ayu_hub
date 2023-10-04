import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  const BookName({
    super.key,
    required this.bookName,
  });

  final String bookName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 2),
      child: Text(
        bookName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
