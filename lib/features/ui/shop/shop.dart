import 'package:ayu_hub/features/ui/shop/shop_explore.dart';
import 'package:ayu_hub/features/ui/shop/shop_query.dart';
import 'package:ayu_hub/features/ui/shop/shop_recommended.dart';
import 'package:ayu_hub/features/ui/shop/shop_topbar.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ShopTopBar(),
              ShopQueryBox(),
              ShopExplore(),
              ShoppBookCarousel(title: "Recommended eBooks"),
              ShoppBookCarousel(title: "Popular eBooks"),
              ShoppBookCarousel(title: "Top Picks eBooks"),
            ],
          ),
        ),
      ),
    );
  }
}
