import 'package:ayu_hub/features/ui/review/review_widgets/downloaded.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/ratings.dart';
import 'package:flutter/material.dart';

class BottomInfo extends StatelessWidget {
  final double rating;
  const BottomInfo({
    super.key,
    required this.rating,
  });

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
          child: const Row(
            children: [
              Text(
                "Download for",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Icon(
                Icons.currency_rupee_sharp,
                size: 18,
                color: Colors.white,
              ),
              Text(
                "200",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
