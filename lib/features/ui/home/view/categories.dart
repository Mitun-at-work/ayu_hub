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
                iconContainer('assets/images/basil.png'),
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
                iconContainer('assets/images/homeopathy (2).png'),
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
                iconContainer('assets/images/homeopathy (1).png'),
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
                iconContainer('assets/images/mortar.png'),
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

  Container iconContainer(String iconPath) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          // shape: BoxShape.circle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
                blurRadius: 1.2,
                spreadRadius: .6,
                color: Colors.grey.shade200,
                offset: const Offset(0, 1))
          ]),
      child: Center(
        child: Image.asset(
          height: 35,
          width: 35,
          fit: BoxFit.cover,
          iconPath,
        ),
      ),
    );
  }
}
