import 'package:ayu_hub/features/constants/contants.dart';
import 'package:ayu_hub/features/ui/review/reviewpage.dart';
import 'package:ayu_hub/features/ui/shop/book_component.dart';
import 'package:ayu_hub/features/ui/shop/title_tile.dart';

import 'package:flutter/material.dart';

class ShoppBookCarousel extends StatelessWidget {
  const ShoppBookCarousel({
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
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Reviewpage(
                        bookModel: bookModels[index],
                      ),
                    ),
                  );
                },
                child: BookComponent(
                  bookModel: bookModels[index],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
