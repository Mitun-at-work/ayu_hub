import 'package:ayu_hub/features/ui/review/review_widgets/staffreview.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/studentreview.dart';

import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        StaffReview(),
        Divider(
          thickness: 1,
        ),
        StudentReview(),
      ],
    ));
  }
}
