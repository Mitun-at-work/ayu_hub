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
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(seconds: 7),
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
            activeDotColor: Colors.black87,
            paintStyle: PaintingStyle.fill,
          ),
        ),
      ],
    );
  }
}
