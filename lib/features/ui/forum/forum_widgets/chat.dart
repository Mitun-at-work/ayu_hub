import 'package:ayu_hub/features/ui/forum/forumcomments.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  final String inputText;
  final String name;
  final String shares;
  final String comments;
  final String likes;
  final String imgUrl;
  const ChatWidget({
    super.key,
    required this.inputText,
    required this.name,
    required this.shares,
    required this.comments,
    required this.likes,
    required this.imgUrl,
  });

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.inputText,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(widget.imgUrl),
              ),
              const SizedBox(width: 10),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade600,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.favorite_outline,
                size: 20,
              ),
              const SizedBox(width: 10),
              Text(
                widget.shares,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 13,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const ForumComment(),
                    ),
                  );
                },
                child: const SizedBox(
                  height: 18,
                  width: 18,
                  child: Image(
                    image: AssetImage(
                      "assets/images/speech-bubble.png",
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                widget.shares,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.share_outlined,
                size: 18,
              ),
              const SizedBox(width: 10),
              Text(
                widget.shares,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(thickness: 2),
        ],
      ),
    );
  }
}
