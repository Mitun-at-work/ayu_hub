import 'package:ayu_hub/features/ui/forum/data/forumdata.dart';
import 'package:flutter/material.dart';

class ForumTrending extends StatelessWidget {
  const ForumTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chats[0]["text"],
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Text(
                    "Answer ",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(width: 10),
                  Text(
                    ". The Internet",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(
                      chats[0]["profileUrl"],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    chats[0]["profileName"],
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    height: 25,
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
      ),
    );
  }
}
