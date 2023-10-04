import 'package:flutter/material.dart';

class ForumSelectedComment extends StatefulWidget {
  final String selectedText;
  final String name;

  final String comments;
  final String likes;
  final String imgUrl;
  const ForumSelectedComment({
    super.key,
    required this.selectedText,
    required this.name,
    required this.comments,
    required this.likes,
    required this.imgUrl,
  });

  @override
  State<ForumSelectedComment> createState() => _ForumSelectedCommentState();
}

class _ForumSelectedCommentState extends State<ForumSelectedComment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.selectedText,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
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
                    color: Colors.grey.shade900,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.favorite_outline,
                  size: 25,
                ),
                const SizedBox(width: 10),
                Text(
                  widget.likes,
                  style: TextStyle(
                    color: Colors.grey.shade900,
                  ),
                ),
                const SizedBox(width: 10),
                const SizedBox(
                  height: 25,
                  width: 25,
                  child: Image(
                    image: AssetImage(
                      "assets/images/speech-bubble.png",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  widget.comments,
                  style: TextStyle(
                    color: Colors.grey.shade900,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}
