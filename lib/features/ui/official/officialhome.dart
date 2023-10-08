import 'package:ayu_hub/features/ui/admin/admin_widgets/trendingcarousel.dart';
import 'package:ayu_hub/features/ui/home/view/categories.dart';
import 'package:ayu_hub/features/ui/home/view/trending_post_builder.dart';
import 'package:ayu_hub/features/ui/official/officialtopbar.dart';
import 'package:ayu_hub/features/ui/shop/shop_recommended.dart';
import 'package:ayu_hub/features/ui/shop/title_tile.dart';
import 'package:flutter/material.dart';

class OfficialHome extends StatefulWidget {
  const OfficialHome({super.key});

  @override
  State<OfficialHome> createState() => _OfficialHomeState();
}

class _OfficialHomeState extends State<OfficialHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              OfficialTopBar(),
              SizedBox(
                height: 20,
              ),
              TreendingCarousel(),
              SizedBox(height: 10),
              TitleTile(
                tileTitle: "Categories",
                tileSuffix: "",
              ),
              SizedBox(height: 10),
              Categories(),
              SizedBox(height: 10),
              TitleTile(tileTitle: "Events", tileSuffix: ""),
              SizedBox(height: 10),
              TrendingPostBuilder(),
              ShoppBookCarousel(
                title: "Recommended Books",
              ),
              ShoppBookCarousel(
                title: "Popular this month",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
