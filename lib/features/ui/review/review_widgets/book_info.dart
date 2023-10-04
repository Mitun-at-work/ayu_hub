import 'package:ayu_hub/features/ui/review/review_widgets/stardisplay.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/tags.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ayurveda for Beginners 2021",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Author By: Colone LV",
            style: TextStyle(
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
          const Stars(value: 4),
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
