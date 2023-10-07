import 'package:ayu_hub/features/ui/review/review_widgets/stardisplay.dart';
import 'package:flutter/material.dart';

class StudentReview extends StatelessWidget {
  const StudentReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/person(2).jpeg"),
              ),
              SizedBox(width: 10),
              Text(
                "Jessie",
                style: TextStyle(),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Stars(value: 4),
              SizedBox(width: 8),
              Text(
                "Nice",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Text(
            "Reviewed in India on 23 September 2023",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "I would say that the first half of this book was kinda boring and slow paced but the second half was SOOO FREAKING GOODD, the twists and turns that keep you at edge that it makes up completely for the first half. And oof that angsty end. 100% recommended",
            style: TextStyle(),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      spreadRadius: .1,
                      blurRadius: 12,
                      offset: const Offset(1, 2),
                    ),
                  ],
                ),
                child: const Text("Helpful"),
              ),
              const SizedBox(width: 10),
              const VerticalDivider(
                width: 10,
                thickness: 2,
                color: Colors.black,
              ),
              const Text("Report")
            ],
          ),
        ],
      ),
    );
  }
}
