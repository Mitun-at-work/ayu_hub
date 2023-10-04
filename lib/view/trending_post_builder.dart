import 'package:ayu_hub/view/trendingpost_component.dart';
import 'package:flutter/material.dart';

class TrendingPostBuilder extends StatelessWidget {
  const TrendingPostBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const TrendingPost();
        },
      ),
    );
  }
}
