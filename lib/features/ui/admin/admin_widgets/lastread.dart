import 'package:ayu_hub/features/ui/admin/admin_widgets/lastreadinfo.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/bookimg.dart';
import 'package:ayu_hub/features/ui/shop/model/book_model.dart';
import 'package:flutter/material.dart';

class LastRead extends StatelessWidget {
  final BookModel bookModel;
  const LastRead({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      // margin: const EdgeInsets.all(10),
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
      child: Row(
        children: [
          BookImage(
            bookCoverImage: bookModel.bookCoverImage,
          ),
          const SizedBox(
            width: 20,
          ),
          const LastReadInfo()
        ],
      ),
    );
  }
}
