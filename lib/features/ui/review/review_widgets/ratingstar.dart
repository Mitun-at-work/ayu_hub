import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  final double value;
  const RatingStar({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return const Icon(
          Icons.star_outline_outlined,
          size: 40,
          color: Colors.amber,
        );
      }),
    );
  }
}
