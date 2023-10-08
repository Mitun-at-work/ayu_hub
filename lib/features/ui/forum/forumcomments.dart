import 'package:ayu_hub/features/ui/forum/data/forumdata.dart';
import 'package:ayu_hub/features/ui/forum/forum_widgets/forumselectedcomment.dart';
import 'package:ayu_hub/features/ui/forum/forum_widgets/replycomment.dart';
import 'package:flutter/material.dart';

class ForumComment extends StatefulWidget {
  const ForumComment({
    super.key,
  });

  @override
  State<ForumComment> createState() => _ForumCommentState();
}

class _ForumCommentState extends State<ForumComment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            weight: 1,
            size: 26,
          ),
        ),
        title: const Text(
          "Replies",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 24, color: Colors.black87),
        ),
      ),
      body: Column(
        children: [
          ForumSelectedComment(
            selectedText: chats[0]["text"],
            name: chats[0]["profileName"],
            comments: chats[0]["comments"],
            likes: chats[0]["likes"],
            imgUrl: chats[0]["profileUrl"],
          ),
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: replies.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                ),
                child: ReplyComment(
                  selectedText: replies[index]["text"],
                  name: replies[index]["profileName"],
                  comments: replies[index]["comments"],
                  likes: "10",
                  imgUrl: replies[index]["profileUrl"],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
