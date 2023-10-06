import 'package:ayu_hub/features/constants/contants.dart';
import 'package:ayu_hub/features/ui/home/view/ayur_books.dart';

import 'package:flutter/material.dart';

class AyurvedhaBooksBuilder extends StatelessWidget {
  const AyurvedhaBooksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return AyurvedhaBooks(
            bookModel: bookModels[index],
          );
        },
      ),
    );
  }
}
