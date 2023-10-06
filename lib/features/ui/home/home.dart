import 'package:ayu_hub/features/ui/home/view/categories.dart';
import 'package:ayu_hub/features/ui/home/view/nameand_notification.dart';
import 'package:ayu_hub/features/ui/home/view/trending.dart';
import 'package:ayu_hub/features/ui/home/view/trending_post_builder.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NameAndNotification(),
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            items: [1, 2, 3, 4, 5].map(
              (e) {
                return const Trending();
              },
            ).toList(),
            options: CarouselOptions(
              height: 190,
              autoPlay: true,
              enlargeCenterPage: false,
              enableInfiniteScroll: true,
            ),
          ),
          // Trending(),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10, right: 15),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Categories(),
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              top: 20,
            ),
            child: Text(
              'Trending Post',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TrendingPostBuilder(),
        ],
      )),
    );
  }
}
