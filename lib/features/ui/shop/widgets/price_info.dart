import 'package:flutter/material.dart';

class BookPriceInfo extends StatelessWidget {
  const BookPriceInfo({
    super.key,
    required this.bookPrice,
    required this.bookRating,
  });

  final double bookPrice;
  final double bookRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("\$$bookPrice"),
        Row(
          children: [
            Text(bookRating.toString()),
            const Padding(
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
