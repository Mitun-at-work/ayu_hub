import 'package:ayu_hub/features/ui/home/view/categorybook.dart';
import 'package:flutter/material.dart';

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
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CategoryBooks()));
                  },
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
                    'assets/images/siddha2.png',
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
                    'assets/images/homeopathy.png',
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
                    'assets/images/unnani2.jpg',
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
