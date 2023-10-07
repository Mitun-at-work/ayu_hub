import 'package:ayu_hub/features/ui/review/review_widgets/stardisplay.dart';
import 'package:flutter/material.dart';

class StaffReview extends StatelessWidget {
  const StaffReview({super.key});

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
                backgroundImage: AssetImage(
                  "assets/images/person(1).jpeg",
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Alexander",
                style: TextStyle(),
              ),
              SizedBox(width: 10),
              Image(
                height: 20,
                width: 20,
                image: AssetImage("assets/images/verify.png"),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Stars(value: 5),
              SizedBox(width: 8),
              Text(
                "Good",
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
            "It was an epic read. I have to read the third book soon! Good thing i started this book when the series got over!",
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
