import 'package:ayu_hub/features/constants/contants.dart';
import 'package:ayu_hub/features/ui/home/view/categoryrating.dart';
import 'package:ayu_hub/features/ui/profile/Purchasehistory_halfpage.dart';

import 'package:ayu_hub/features/ui/review/review_widgets/tags.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyLibraryPage extends StatelessWidget {
  const MyLibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 25,
                  ),
                  const Text(
                    'My Library',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          PurchasedHistoryHalfPage(bookModel: bookModels[0])));
                },
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              height: 170,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(.1),
                                image: const DecorationImage(
                                  image: CachedNetworkImageProvider(
                                      'https://iiam.co.in/Uploads/books/62728a1e-5534-49b9-9b3e-44ac989bff0c/FrontImage.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'The Magic of Ayurveda ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Row(
                                children: [
                                  Text(
                                    "Author By:",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    'Sanjay Dixit',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              const CategoryRatings(
                                value: '4.9',
                                rate: "200",
                                title: '',
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Following Tags",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                children: [
                                  Tags(tag: "#Ayurveda"),
                                  SizedBox(width: 20),
                                  Tags(tag: "#Sidda"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            height: 170,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(.1),
                              image: const DecorationImage(
                                image: CachedNetworkImageProvider(
                                    'https://m.media-amazon.com/images/I/31I-jWrXv-L.SY445_SX342.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Principal of Ayurvedha',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Row(
                              children: [
                                Text(
                                  "Author By:",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  'Dr.Marc Halpern',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const CategoryRatings(
                              value: '4.3',
                              rate: "300",
                              title: '',
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Following Tags",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              children: [
                                Tags(tag: "#Ayurveda"),
                                SizedBox(width: 20),
                                Tags(tag: "#Sidda"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
