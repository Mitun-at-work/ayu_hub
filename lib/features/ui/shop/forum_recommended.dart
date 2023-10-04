import 'package:ayu_hub/features/constants/contants.dart';
import 'package:ayu_hub/features/ui/shop/book_component.dart';
import 'package:ayu_hub/features/ui/shop/title_tile.dart';

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
            itemCount: bookModels.length,
            itemBuilder: (context, index) {
              return BookComponent(
                bookModel: bookModels[index],
              );
            },
          ),
        )
      ],
    );
  }
}
