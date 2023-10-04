import 'package:flutter/material.dart';

class TitleTile extends StatelessWidget {
  const TitleTile({
    super.key,
    required this.tileTitle,
    required this.tileSuffix,
  });

  final String tileTitle;

  final String tileSuffix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tileTitle,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          Text(
            tileSuffix,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
