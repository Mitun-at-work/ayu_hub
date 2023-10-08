import 'package:flutter/material.dart';

class FeildButton extends StatelessWidget {
  final String title;
  final Widget pages;
  final String link;
  final double height;
  final double width;
  const FeildButton({
    super.key,
    required this.title,
    required this.pages,
    required this.link,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // width: double.infinity,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.purple.shade900,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(link),
            height: height,
            width: width,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 2, right: 25),
          child: Text(title,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center),
        ),
        dense: true,
        visualDensity: const VisualDensity(vertical: 3), // to expand
        onTap: () {
          // tap actions
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => pages,
            ),
          );
        },
      ),
    );
  }
}
