import 'package:ayu_hub/features/ui/admin/creditpoints.dart';
import 'package:flutter/material.dart';

class OfficialTopBar extends StatelessWidget {
  const OfficialTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 20),
      child: Row(
        children: [
          const Text(
            'Hi, Alexander',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          const SizedBox(width: 10),
          const Image(
            image: AssetImage("assets/images/verify.png"),
            height: 20,
            width: 20,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const CreditiPoints(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: 80,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black54),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(
                      "assets/images/coin.png",
                    ),
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '120',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
