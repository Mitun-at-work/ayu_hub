import 'package:ayu_hub/features/ui/home/view/ayurvedhabooks.dart';
import 'package:ayu_hub/features/ui/home/view/ayurvedhabookcover.dart';
import 'package:ayu_hub/features/ui/shop/model/book_model.dart';

import 'package:flutter/material.dart';

class AyurvedhaBooks extends StatelessWidget {
  const AyurvedhaBooks({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            spreadRadius: .1,
            blurRadius: 12,
            offset: const Offset(1, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AyurvedhaBookCover(bookCoverImage: bookModel.bookCoverImage),
                const SizedBox(width: 20),
                AyurvedhaBooksDetail(
                  bookName: bookModel.bookName,
                  bookAuthorName: bookModel.bookAuthorName,
                  bookPrice: bookModel.bookPrice.toString(),
                  bookRating: bookModel.bookRating.toString(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
