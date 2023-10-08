import 'package:ayu_hub/features/ui/home/view/categories.dart';
import 'package:ayu_hub/features/ui/home/view/nameand_notification.dart';
import 'package:ayu_hub/features/ui/home/view/trending.dart';
import 'package:ayu_hub/features/ui/home/view/trending_post_builder.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = [
    const Trending(),
    const Trending(),
    const Trending(),
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NameAndNotification(),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: items.map(
                (e) {
                  return const Trending();
                },
              ).toList(),
              options: CarouselOptions(
                height: 190,
                autoPlay: true,
                enlargeCenterPage: false,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      currentindex = index;
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: currentindex,
                count: items.length,
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 5,
                  dotColor: Colors.grey.shade200,
                  activeDotColor: Colors.black87,
                  paintStyle: PaintingStyle.fill,
                ),
              ),
            ),
            // Trending(),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 26, right: 15),
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
                'Events',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TrendingPostBuilder(),
          ],
        ),
      )),
    );
  }
}
