import 'package:ayu_hub/features/ui/forum/forum_widgets/carousel.dart';

import 'package:flutter/material.dart';

class ForumScreen extends StatefulWidget {
  const ForumScreen({super.key});

  @override
  State<ForumScreen> createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.deepPurple,
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                // color: Colors.whi,
                height: 300,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top Picks for you",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 15),
                    CarouselWidget(),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Row(
              //         children: [
              //           const Text(
              //             "Spaces",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 20,
              //               fontWeight: FontWeight.w600,
              //             ),
              //           ),
              //           const Spacer(),
              //           InkWell(
              //             onTap: () {},
              //             child: const Icon(
              //               Icons.arrow_forward,
              //               size: 25,
              //             ),
              //           ),
              //         ],
              //       ),
              //       const SizedBox(
              //         height: 100,
              //         width: 400,
              //         child: CircleList(),
              //       ),
              //       const Text(
              //         "The Internet",
              //         style: TextStyle(
              //             color: Colors.deepPurple,
              //             fontSize: 25,
              //             fontWeight: FontWeight.w800),
              //       ),
              //       ListView.builder(
              //         physics: const BouncingScrollPhysics(),
              //         itemCount: chats.length,
              //         shrinkWrap: true,
              //         scrollDirection: Axis.vertical,
              //         itemBuilder: (context, index) {
              //           return ChatWidget(
              //             inputText: chats[index]["text"],
              //             name: chats[index]["profileName"],
              //             shares: chats[index]["shares"],
              //             comments: chats[index]["comments"],
              //             likes: chats[index]["likes"],
              //             imgUrl: chats[index]["profileUrl"],
              //           );
              //         },
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
