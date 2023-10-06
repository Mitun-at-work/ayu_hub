import 'package:ayu_hub/features/ui/shop/model/book_model.dart';
import 'package:flutter/material.dart';

final List<Color> tileIconColors = [
  Colors.green,
  Colors.amber,
  Colors.red,
  Colors.blue
];

final List<String> categoryName = [
  "Ayurvedha",
  "siddha",
  "Homeopathy",
  "Unani"
];

final List<String> tileHeadings = [
  "Trending",
  "Recommended",
  "Best Seller",
  "Favourites"
];

final List<IconData> tileIcons = [
  Icons.trending_up,
  Icons.book,
  Icons.hourglass_full_rounded,
  Icons.favorite,
];

final List<String> categoriesImage = [
  'assets/images/ayurveda.png',
  'assets/images/homeopathy.png',
  'assets/images/ayurveda.png',
  'assets/images/ayurveda.png',
];

final List<BookModel> bookModels = [
  BookModel(
    bookCoverImage:
        'https://m.media-amazon.com/images/I/41J1+rTxrJL.SY445_SX342.jpg',
    bookName: 'Ayurved For Beginers',
    bookAuthorName: 'Collane LV',
    bookPrice: 45,
    bookRating: 4.2,
  ),
  BookModel(
    bookCoverImage:
        "https://m.media-amazon.com/images/I/31I-jWrXv-L.SY445_SX342.jpg",
    bookAuthorName: 'Dr. Marc Halpern',
    bookName: 'Principles of Aurvedha',
    bookPrice: 50,
    bookRating: 4.5,
  ),
  BookModel(
    bookCoverImage:
        "https://m.media-amazon.com/images/I/511PUGsLpUL.SY445_SX342.jpg",
    bookAuthorName: 'Adam Edwards',
    bookName: 'Ayurveda',
    bookPrice: 50,
    bookRating: 4.7,
  ),
  BookModel(
    bookCoverImage:
        "https://m.media-amazon.com/images/I/518bZlzfFlL.SY445_SX342.jpg",
    bookAuthorName: 'Adam Edwards',
    bookName: 'Mental Health (Ayurveda)',
    bookPrice: 45,
    bookRating: 4,
  ),
  BookModel(
    bookCoverImage:
        "https://m.media-amazon.com/images/I/51GHGsvOBfL.SY445_SX342.jpg",
    bookAuthorName: 'Kanchan Chowdry',
    bookName: 'Ayurvedha Unleashed',
    bookPrice: 10,
    bookRating: 4.9,
  ),
  BookModel(
    bookCoverImage: "https://m.media-amazon.com/images/I/71oZ-1uMXCL.SY385.jpg",
    bookAuthorName: 'Elena Garcia and James Adler',
    bookName: 'Ayurvedha Secret of Healing',
    bookPrice: 25,
    bookRating: 3.9,
  ),
  BookModel(
    bookCoverImage:
        "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT8RTA0VipoBZJUyH6XrHXXyQ5qkJAPqQcpptgEAx_ON8zfD_Nh2mkMEGmYKKxVRmZmb9wAya4sfV8ns_tnga2Xd6FX9mdQoGgusFKDnaE-hxg8ciaEfDZ_uA&usqp=CAE",
    bookName: 'Sidha Medicine',
    bookAuthorName: 'Dr. J. Jayavenkatesh',
    bookPrice: 20,
    bookRating: 3.9,
  ),
];
