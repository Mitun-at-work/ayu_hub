import 'package:ayu_hub/features/ui/review/review_widgets/stardisplay.dart';
import 'package:flutter/material.dart';

class StudentReview extends StatelessWidget {
  const StudentReview({super.key});

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
                backgroundImage: AssetImage("assets/images/person(2).jpeg"),
              ),
              SizedBox(width: 10),
              Text(
                "Jessie",
                style: TextStyle(),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
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
            "I would say that the first half of this book was kinda boring and slow paced but the second half was SOOO FREAKING GOODD, the twists and turns that keep you at edge that it makes up completely for the first half. And oof that angsty end. 100% recommended",
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
