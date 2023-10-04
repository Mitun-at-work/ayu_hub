import 'package:flutter/material.dart';

class ShopTopBar extends StatelessWidget {
  const ShopTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Search books on your need guys !",
                style: TextStyle(),
              ),
            ],
          ),
          IconButton.filled(
            onPressed: () {},
            icon: const Icon(
              Icons.sort,
            ),
          )
        ],
      ),
    );
  }
}
