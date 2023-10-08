import 'package:ayu_hub/features/ui/admin/admin_widgets/continuebutton.dart';
import 'package:flutter/material.dart';

class LastReadInfo extends StatelessWidget {
  final String bookName;
  final String authorName;
  const LastReadInfo({
    super.key,
    required this.bookName,
    required this.authorName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bookName,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Author By: $authorName",
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Pages readed",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "49 Out of 159",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w600, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          const ContinueButton(),
        ],
      ),
    );
  }
}
