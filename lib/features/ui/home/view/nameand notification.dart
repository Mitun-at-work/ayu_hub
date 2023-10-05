import 'package:flutter/material.dart';

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
