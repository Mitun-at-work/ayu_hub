import 'package:ayu_hub/features/ui/shop/model/book_model.dart';
import 'package:ayu_hub/features/ui/shop/widgets/author_name.dart';
import 'package:ayu_hub/features/ui/shop/widgets/book_cover.dart';
import 'package:ayu_hub/features/ui/shop/widgets/book_name.dart';
import 'package:ayu_hub/features/ui/shop/widgets/price_info.dart';
import 'package:flutter/material.dart';

class BookComponent extends StatelessWidget {
  const BookComponent({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            spreadRadius: .1,
            blurRadius: 12,
            offset: const Offset(1, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookCover(bookCoverImage: bookModel.bookCoverImage),
          BookName(bookName: bookModel.bookName),
          BookAuthorName(bookAuthorName: bookModel.bookAuthorName),
          BookPriceInfo(
            bookPrice: bookModel.bookPrice,
            bookRating: bookModel.bookRating,
          )
        ],
      ),
    );
  }
}
