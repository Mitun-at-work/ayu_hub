import 'package:ayu_hub/features/constants/contants.dart';
import 'package:ayu_hub/features/ui/home/view/ayur_books.dart';

import 'package:flutter/material.dart';

class AyurvedhaBooksBuilder extends StatelessWidget {
  const AyurvedhaBooksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return AyurvedhaBooks(
          bookModel: bookModels[index],
        );
      },
    );
  }
}
