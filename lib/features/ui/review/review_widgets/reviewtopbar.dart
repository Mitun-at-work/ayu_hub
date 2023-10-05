import 'package:flutter/material.dart';

class ReviewTopBar extends StatefulWidget {
  const ReviewTopBar({super.key});

  @override
  State<ReviewTopBar> createState() => _ReviewTopBarState();
}

class _ReviewTopBarState extends State<ReviewTopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        const Spacer(),
        const Center(
          child: Text(
            "Detail EBook",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_outline,
            size: 30,
          ),
        ),
      ],
    );
  }
}
