import 'package:ayu_hub/features/ui/admin/admin_widgets/trendingcarousel.dart';
import 'package:ayu_hub/features/ui/home/view/categories.dart';
import 'package:ayu_hub/features/ui/home/view/nameand_notification.dart';
import 'package:ayu_hub/features/ui/home/view/trending_post_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NameAndNotification(),
            SizedBox(
              height: 20,
            ),
            TreendingCarousel(),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 26, right: 15),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Categories(),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 20,
              ),
              child: Text(
                'Events',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TrendingPostBuilder(),
          ],
        ),
      )),
    );
  }
}
