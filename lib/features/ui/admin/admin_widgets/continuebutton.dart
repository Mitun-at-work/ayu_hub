import 'package:ayu_hub/features/constants/contants.dart';
import 'package:ayu_hub/features/ui/review/reviewpage.dart';
import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Reviewpage(
                bookModel: bookModels[0],
              ),
            ),
          );
        },
        child: const Row(
          children: [
            Text("Continue to Read"),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
