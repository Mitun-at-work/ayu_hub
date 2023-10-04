import 'package:flutter/material.dart';

class BookPriceInfo extends StatelessWidget {
  const BookPriceInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("\$20"),
        Row(
          children: [
            Text("4.9"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(
                Icons.star,
                color: Colors.amber,
                size: 18,
              ),
            ),
          ],
        )
      ],
    );
  }
}
