import 'package:flutter/material.dart';

class AyurvedhaBooksImage extends StatelessWidget {
  const AyurvedhaBooksImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        image: const DecorationImage(
          image: NetworkImage(
              "https://m.media-amazon.com/images/I/41J1+rTxrJL.SY445_SX342.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
