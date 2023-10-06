
import 'package:ayu_hub/features/ui/home/view/categoryrating.dart';

import 'package:ayu_hub/features/ui/review/review_widgets/tags.dart';

import 'package:flutter/material.dart';

class AyurvedhaBooksDetail extends StatelessWidget {
  const AyurvedhaBooksDetail(
      {super.key,
      required this.BookName,
      required this.bookAuthorName,
      required this.bookPrice,
      required this.bookRating});

  final String BookName;
  final String bookAuthorName;
  final String bookPrice;
  final String bookRating;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BookName,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Text(
                "Author By:",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              Text(
                bookAuthorName,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          CategoryRatings(
            value: bookRating,
            rate: "\$$bookPrice",
            title: '',
          ),
          const SizedBox(height: 10),
          Text(
            "Following Tags",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Tags(tag: "#Ayurveda"),
              SizedBox(width: 20),
              Tags(tag: "#Sidda"),
            ],
          ),
        ],
      ),
    );
  }
}
