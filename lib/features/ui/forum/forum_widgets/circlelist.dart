import 'package:flutter/material.dart';

class CircleList extends StatefulWidget {
  const CircleList({super.key});

  @override
  State<CircleList> createState() => _CircleListState();
}

class _CircleListState extends State<CircleList> {
  final List<String> myItems = [
    "assets/images/ayurveda.png",
    "assets/images/homeopathy.png",
    "assets/images/ayurveda.png",
    "assets/images/homeopathy.png",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: myItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Image(
              image: AssetImage(
                myItems[index],
              ),
            ),
          ),
        );
      },
    );
  }
}
