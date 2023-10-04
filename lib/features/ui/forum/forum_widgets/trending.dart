import 'package:ayu_hub/features/ui/forum/data/forumdata.dart';
import 'package:flutter/material.dart';

class ForumTrending extends StatelessWidget {
  const ForumTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      // height: 200,
      width: 600,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chats[0]["text"],
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  "Answer ",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                ),
                const Text(
                  ". The Internet",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                ),
                const SizedBox(width: 10),
                Text(
                  chats[0]["profileName"],
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.red.shade800,
                  ),
                  child: const Text(
                    "Trending",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
