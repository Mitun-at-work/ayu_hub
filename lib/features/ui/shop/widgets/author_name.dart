import 'package:flutter/material.dart';

class BookAuthorName extends StatelessWidget {
  const BookAuthorName({
    super.key,
    required this.bookAuthorName,
  });

  final String bookAuthorName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        bookAuthorName,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 10,
        ),
      ),
    );
  }
}
