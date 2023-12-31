import 'package:ayu_hub/features/constants/contants.dart';
import 'package:ayu_hub/features/ui/admin/admin_widgets/lastread.dart';
import 'package:ayu_hub/features/ui/admin/admin_widgets/topbar.dart';
import 'package:ayu_hub/features/ui/admin/admin_widgets/trendingcarousel.dart';
import 'package:ayu_hub/features/ui/home/view/categories.dart';
import 'package:ayu_hub/features/ui/review/reviewpage.dart';
import 'package:ayu_hub/features/ui/shop/shop_recommended.dart';
import 'package:ayu_hub/features/ui/shop/title_tile.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const TopBar(),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Reviewpage(
                        bookModel: bookModels[0],
                      ),
                    ),
                  );
                },
                child: const TreendingCarousel(),
              ),
              const SizedBox(height: 10),
              const TitleTile(
                tileTitle: "Last read",
                tileSuffix: "",
              ),
              const SizedBox(height: 10),
              LastRead(
                bookModel: bookModels[0],
              ),
              const SizedBox(height: 10),
              const TitleTile(
                tileTitle: "Categories",
                tileSuffix: "",
              ),
              const SizedBox(height: 10),
              const Categories(),
              const SizedBox(height: 10),
              const ShoppBookCarousel(
                title: "Recommended Books",
              ),
              const ShoppBookCarousel(
                title: "Popular this month",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
