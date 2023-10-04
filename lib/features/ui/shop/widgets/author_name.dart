import 'package:flutter/material.dart';

class BookAuthorName extends StatelessWidget {
  const BookAuthorName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        "Mr Mitun Suresh",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 10,
        ),
      ),
    );
  }
}
