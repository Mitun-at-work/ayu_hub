import 'package:ayu_hub/features/ui/review/review_widgets/inputfield.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/ratingstar.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/title.dart';
import 'package:flutter/material.dart';

class EnterReview extends StatelessWidget {
  const EnterReview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextTitle(
                  title: "How would you rate it?",
                ),
                const SizedBox(height: 5),
                const RatingStar(value: 5),
                const SizedBox(height: 20),
                const TextTitle(title: "Title your review"),
                const SizedBox(height: 10),
                const InputField(
                  hintText: "What's most important to know?",
                  maxLines: 1,
                ),
                const SizedBox(height: 20),
                const TextTitle(title: "Write your review"),
                const SizedBox(height: 10),
                const InputField(
                  hintText: "What did you like or dislike?",
                  maxLines: 5,
                ),
                const SizedBox(height: 50),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade600,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
