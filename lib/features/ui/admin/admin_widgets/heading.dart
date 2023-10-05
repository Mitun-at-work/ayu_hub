import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String heading;
  const Heading({
    super.key,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        top: 15,
        right: 15,
      ),
      child: Text(
        heading,
        style: const TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
