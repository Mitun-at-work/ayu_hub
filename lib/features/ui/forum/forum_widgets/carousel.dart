import 'package:ayu_hub/features/ui/forum/forum_widgets/trending.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final myitems = [
    const ForumTrending(),
    const ForumTrending(),
    const ForumTrending(),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayCurve: Curves.linear,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(seconds: 2),
            enlargeCenterPage: false,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(
                () {
                  myCurrentIndex = index;
                },
              );
            },
          ),
          items: myitems,
        ),
        const SizedBox(height: 10),
        AnimatedSmoothIndicator(
          activeIndex: myCurrentIndex,
          count: myitems.length,
          effect: WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 10,
            dotColor: Colors.grey.shade200,
            activeDotColor: Colors.grey.shade900,
            paintStyle: PaintingStyle.fill,
          ),
        ),
      ],
    );
  }
}
