import 'package:ayu_hub/features/ui/home/view/eventdata.dart';
import 'package:ayu_hub/features/ui/home/view/trendingpost_component.dart';
import 'package:flutter/material.dart';

class TrendingPostBuilder extends StatelessWidget {
  const TrendingPostBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: eventData.length,
        itemBuilder: (context, index) {
          return TrendingPost(
            eventTitle: eventData[index]["eventTitle"],
            date: eventData[index]["date"],
            day: eventData[index]["day"],
            likes: eventData[index]["likes"],
            comments: eventData[index]["comments"],
          );
        },
      ),
    );
  }
}
