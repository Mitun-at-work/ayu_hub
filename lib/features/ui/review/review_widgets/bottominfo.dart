import 'package:ayu_hub/features/ui/review/review_widgets/pdfviewer.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/downloaded.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/paymentpage.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/ratings.dart';
import 'package:flutter/material.dart';

class BottomInfo extends StatelessWidget {
  final double rating;
  final String name;
  const BottomInfo({
    super.key,
    required this.rating, required this.name,
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
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const PaymentPage()));
          },
          child: Container(
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
        ),
      ],
    );
  }
}
