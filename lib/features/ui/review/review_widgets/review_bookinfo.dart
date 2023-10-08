import 'package:ayu_hub/features/ui/profile/purchasedhistory_Bottominfo.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/book_info.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/bookimg.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/bottominfo.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/reviewtopbar.dart';
import 'package:ayu_hub/features/ui/shop/model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final BookModel bookModel;
  const BookDetails({
    super.key,
    required this.bookModel,
  });

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
            const ReviewTopBar(),
            const SizedBox(height: 20),
            Row(
              children: [
                BookImage(
                  bookCoverImage: bookModel.bookCoverImage,
                ),
                const SizedBox(width: 20),
                BookInfo(
                  bookName: bookModel.bookName,
                  authorName: bookModel.bookAuthorName,
                  rating: bookModel.bookRating,
                ),
              ],
            ),
            const SizedBox(height: 40),
            BottomInfo(
              rating: bookModel.bookRating,
              name: bookModel.bookName,
            ),
          ],
        ),
      ),
    );
  }
}
