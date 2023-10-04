import 'package:ayu_hub/features/constants/contants.dart';
import 'package:ayu_hub/features/ui/shop/title_tile.dart';
import 'package:flutter/material.dart';

class ForumExplore extends StatelessWidget {
  const ForumExplore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        children: [
          const TitleTile(
            tileTitle: "Explore eBooks",
            tileSuffix: "More",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 60,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: tileHeadings.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(2),
                    width: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            tileIcons[index],
                            color: tileIconColors[index],
                          ),
                        ),
                        Text(
                          tileHeadings[index],
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
