import 'package:ayu_hub/view/trending_post_builder.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List gradientcolors = [
    const Color.fromARGB(255, 255, 171, 145),
    const Color.fromARGB(255, 255, 138, 101),
    const Color.fromARGB(255, 255, 87, 34),
    const Color.fromARGB(255, 255, 87, 34),
  ];

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
              enlargeCenterPage: true,
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

class NameAndNotification extends StatelessWidget {
  const NameAndNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Hi, Sudharsasn',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Center(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined),
              iconSize: 30,
              color: Colors.black54,
              splashRadius: 18,
            ),
          )
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 85,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/ayurveda.png',
                  ),
                  iconSize: 40,
                ),
                const Text(
                  'Ayurvedha',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Container(
            height: 100,
            width: 85,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/homeopathy.png',
                  ),
                  iconSize: 40,
                ),
                const Text(
                  'Siddha',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 100,
            width: 94,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/ayurveda.png',
                  ),
                  iconSize: 40,
                ),
                const Text(
                  'Homeopathy',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Container(
            height: 100,
            width: 85,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/ayurveda.png',
                  ),
                  iconSize: 40,
                ),
                const Text(
                  'unani',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 9,
          ),
        ],
      ),
    );
  }
}

class Trending extends StatelessWidget {
  const Trending({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 171, 145),
              Color.fromARGB(255, 255, 138, 101),
              Color.fromARGB(255, 255, 87, 34),
              Color.fromARGB(255, 255, 87, 34),
            ],
          )),
      // decoration: const BoxDecoration(
      //     color: Colors.redAccent,
      //     borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
