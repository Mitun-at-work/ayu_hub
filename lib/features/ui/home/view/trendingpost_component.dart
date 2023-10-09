import 'package:flutter/material.dart';

class TrendingPost extends StatelessWidget {
  final String eventTitle;
  final String day;
  final String date;
  final String likes;
  final String comments;
  const TrendingPost({
    super.key,
    required this.eventTitle,
    required this.day,
    required this.date,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Container(
          height: 200,
          width: 170,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade300,
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              day,
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              date,
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  eventTitle,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                    text: 'in ',
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Ministry Of AYUSH',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      '$likes Likes',
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 7.0,
                      width: 5.0,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      '$comments comments',
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
