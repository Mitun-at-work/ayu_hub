import 'package:ayu_hub/features/ui/admin/admin_home.dart';
import 'package:ayu_hub/features/ui/admin/adminprofiles.dart';
import 'package:ayu_hub/features/ui/admin/publish.dart';
import 'package:ayu_hub/features/ui/forum/forum.dart';
import 'package:ayu_hub/features/ui/profile/profile.dart';
import 'package:ayu_hub/features/ui/shop/shop.dart';
import 'package:flutter/material.dart';

class AdminNavbar extends StatefulWidget {
  const AdminNavbar({super.key});

  @override
  State<AdminNavbar> createState() => _AdminNavbarState();
}

class _AdminNavbarState extends State<AdminNavbar> {
  int selectedindex = 0;

  List pages = [
    const AdminHome(),
    const ShoppingScreen(),
    const PublishPage(),
    const ForumScreen(),
    const AdminProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              selectedindex = value;
            });
          },
          currentIndex: selectedindex,
          selectedItemColor: Colors.deepPurple.shade900,
          unselectedItemColor: Colors.black54,
          items: [
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_filled,
                size: 25,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'E-Book',
              icon: Icon(
                Icons.shopping_cart,
                size: 25,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'publish',
              icon: Icon(
                Icons.add_circle_outline_rounded,
                size: 30,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'My Spaces',
              icon: Icon(
                Icons.group,
                size: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/person(2).jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: pages[selectedindex],
      ),
    );
  }
}
