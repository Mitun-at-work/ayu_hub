import 'package:ayu_hub/features/ui/review/review_widgets/airating.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/animatedtext.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/title.dart';
import 'package:flutter/material.dart';

class AiReport extends StatefulWidget {
  const AiReport({super.key});

  @override
  State<AiReport> createState() => _AiReportState();
}

class _AiReportState extends State<AiReport> {
  final Map<int, int> staffRatings = {
    1: 2,
    2: 4,
    3: 4,
    4: 10,
    5: 25,
  };
  final Map<int, int> studentRatings = {
    1: 2,
    2: 10,
    3: 10,
    4: 35,
    5: 48,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextTitle(title: "Review Summary"),
            const SizedBox(
              height: 20,
            ),
            // const AnimatedText(),
            const Text(
                "All two reviews of The Magic of Ayurveda are positive, praising the book's clear and concise writing style, practical advice, the author's knowledge of Ayurveda, and overall informativeness and entertainment value. Therefore, the book is recommended as a standard text, and students are advised to purchase it."),
            const SizedBox(height: 20),
            RatingSummaryWidget(
              ratings: staffRatings,
              field: "Staff Ratings",
            ),
            const SizedBox(
              height: 30,
            ),
            RatingSummaryWidget(
              ratings: studentRatings,
              field: "Students Ratings",
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
