import 'package:ayu_hub/features/ui/review/review_widgets/downloaded.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/pdfviewer.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/ratings.dart';
import 'package:flutter/material.dart';

class BottombkInfo extends StatelessWidget {
  final double rating;
  final String name;
  const BottombkInfo({
    super.key,
    required this.rating,
    required this.name,
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
                builder: (BuildContext context) => const PdfViewer(
                      bkName: "The Magic of Ayurveda ",
                    )));
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            height: 50,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.lightGreen.shade500,
            ),
            child: const Text(
              "Read Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
