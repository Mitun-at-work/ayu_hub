import 'package:ayu_hub/features/ui/review/review_widgets/downloaded.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/ratings.dart';
import 'package:flutter/material.dart';

class PurchasedHistoryBottomInfo extends StatelessWidget {
  final double rating;
  const PurchasedHistoryBottomInfo({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Ratings(
          title: "Rating",
          value: rating.toString(),
        ),
        const Downloaded(title: "Downloaded", value: "890 Users"),
        Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.center,
          height: 50,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
          ),
          child: const Center(
            child: Text(
              "Read",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
