import 'package:flutter/material.dart';

class CategoryRatings extends StatelessWidget {
  final String title;
  final String value;
  final String rate;
  const CategoryRatings(
      {super.key,
      required this.value,
      required this.rate,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ratings",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
              Row(
                children: [
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.amber,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 95,
          ),
          Row(
            children: [
              const Icon(
                Icons.currency_rupee_sharp,
                size: 18,
                color: Colors.black,
              ),
              Text(
                rate,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
