import 'package:ayu_hub/features/ui/review/review_widgets/stardisplay.dart';
import 'package:flutter/material.dart';

class StaffReview extends StatelessWidget {
  const StaffReview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
          SizedBox(height: 10),
          Row(
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
          SizedBox(height: 5),
          Text(
            "Reviewed in India on 23 September 2023",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "It was an epic read. I have to read the third book soon! Good thing i started this book when the series got over!",
            style: TextStyle(),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(
                Icons.thumb_up_outlined,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.thumb_down_outlined,
              ),
            ],
          )
        ],
      ),
    );
  }
}
