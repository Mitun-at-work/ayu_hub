import 'package:flutter/material.dart';

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
