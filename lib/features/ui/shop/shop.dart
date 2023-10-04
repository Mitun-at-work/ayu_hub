import 'package:ayu_hub/features/ui/shop/forum_explore.dart';
import 'package:ayu_hub/features/ui/shop/forum_query.dart';
import 'package:ayu_hub/features/ui/shop/forum_recommended.dart';
import 'package:ayu_hub/features/ui/shop/shop_topbar.dart';
import 'package:flutter/material.dart';

class ForumScreen extends StatelessWidget {
  const ForumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ShopTopBar(),
              ForumQueryBox(),
              ForumExplore(),
              ForumBookCarousel(title: "Recommended eBooks"),
              ForumBookCarousel(title: "Popular eBooks"),
              ForumBookCarousel(title: "Top Picks eBooks"),
            ],
          ),
        ),
      ),
    );
  }
}
