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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("\$$bookPrice"),
          Row(
            children: [
              Text(bookRating.toString()),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
