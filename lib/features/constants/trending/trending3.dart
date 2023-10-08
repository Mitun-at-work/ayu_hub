import 'package:flutter/material.dart';

class Trending3 extends StatelessWidget {
  const Trending3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 197,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(255, 246, 246, 246)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 150,
              width: 120,
              // color: Colors.yellow,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://m.media-amazon.com/images/I/511PUGsLpUL.SY445_SX342.jpg'))),
            ),
            const SizedBox(
              width: 4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  'Ayurveda',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Text(
                      'Author:',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Adam Edwards',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                const Row(
                  children: [
                    Text(
                      '4.5',
                      style: TextStyle(fontSize: 16),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 19,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 8),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.purple.shade300,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      // gradient: LinearGradient(
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomCenter,
                      //   colors: [

                      //     // Color.fromARGB(255, 255, 66, 66),
                      //     // Color.fromARGB(255, 250, 40, 40),
                      //     // Color.fromARGB(255, 166, 215, 255),
                      //     // Color.fromARGB(255, 154, 210, 255),
                      //     // Color.fromARGB(255, 122, 195, 255),
                      //     // Color.fromARGB(255, 82, 177, 255),
                      //   ],
                      // ),
                      // boxShadow: [
                      //   BoxShadow(
                      //       blurRadius: 1,
                      //       spreadRadius: 2,
                      //       offset: Offset(0, 1))
                      // ]
                    ),
                    child: const Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // decoration: const BoxDecoration(
      //     color: Colors.redAccent,
      //     borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
