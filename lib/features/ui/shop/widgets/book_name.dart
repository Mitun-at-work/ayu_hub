import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  const BookName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 5, bottom: 2),
      child: Text(
        "Dr Marry Poppins",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
