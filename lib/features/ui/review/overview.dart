import 'package:flutter/material.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text(
              "In Ayurveda, food is medicine. When a person eats in a manner that is best for their unique needs, they can improve their health, live longer, and protect themselves from disease. Other Ayurvedic practices further support a strong mind-body constitution. While all of the Ayurvedic practices help you maintain good health, if you do get sick, the thought is that you can heal faster because your body is in better balance.")
        ],
      ),
    );
  }
}
