import 'package:ayu_hub/features/ui/home/view/trending.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TreendingCarousel extends StatefulWidget {
  const TreendingCarousel({super.key});

  @override
  State<TreendingCarousel> createState() => _TreendingCarouselState();
}

class _TreendingCarouselState extends State<TreendingCarousel> {
  final myitems = [
    const Trending(),
    const Trending(),
    const Trending(),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(seconds: 4),
            aspectRatio: 16 / 6.5,
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
        const SizedBox(height: 20),
        AnimatedSmoothIndicator(
          activeIndex: myCurrentIndex,
          count: myitems.length,
          effect: WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 5,
            dotColor: Colors.grey.shade200,
            activeDotColor: Colors.deepPurple.shade900,
            paintStyle: PaintingStyle.fill,
          ),
        ),
      ],
    );
  }
}
