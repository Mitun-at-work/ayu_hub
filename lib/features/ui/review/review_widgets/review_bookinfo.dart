import 'package:ayu_hub/features/ui/review/review_widgets/book_info.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/bookimg.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/bottominfo.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/reviewtopbar.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

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
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReviewTopBar(),
            SizedBox(height: 20),
            Row(
              children: [
                BookImage(),
                SizedBox(width: 20),
                BookInfo(),
              ],
            ),
            SizedBox(height: 40),
            BottomInfo(),
          ],
        ),
      ),
    );
  }
}
