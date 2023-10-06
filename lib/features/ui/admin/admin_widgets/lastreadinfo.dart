import 'package:ayu_hub/features/ui/admin/admin_widgets/continuebutton.dart';
import 'package:flutter/material.dart';

class LastReadInfo extends StatelessWidget {
  const LastReadInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ayurveda for Beginners 2021",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Author By: Colone LV",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Pages readed",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "49 Out of 80",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w600, color: Colors.grey),
          ),
          SizedBox(height: 20),
          ContinueButton(),
        ],
      ),
    );
  }
}
