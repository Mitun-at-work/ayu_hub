import 'package:ayu_hub/features/ui/shop/title_tile.dart';
import 'package:ayu_hub/features/ui/shop/widgets/author_name.dart';
import 'package:ayu_hub/features/ui/shop/widgets/book_cover.dart';
import 'package:ayu_hub/features/ui/shop/widgets/book_name.dart';
import 'package:ayu_hub/features/ui/shop/widgets/price_info.dart';
import 'package:flutter/material.dart';

class ForumBookCarousel extends StatelessWidget {
  const ForumBookCarousel({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleTile(
          tileTitle: title,
          tileSuffix: "More",
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 270,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                margin: const EdgeInsets.all(10),
                color: Colors.white,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BookCover(),
                    BookName(),
                    BookAuthorName(),
                    BookPriceInfo()
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
