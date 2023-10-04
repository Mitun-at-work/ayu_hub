import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final double value;
  const Stars({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          color: Colors.amber,
        );
      }),
    );
  }
}
