import 'package:ayu_hub/features/ui/review/review_widgets/stardisplay.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/tags.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  final String bookName;
  final String authorName;
  final double rating;
  const BookInfo({
    super.key,
    required this.bookName,
    required this.authorName,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bookName,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            authorName,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Users Rating",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 5),
          Stars(value: rating),
          const SizedBox(height: 20),
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
