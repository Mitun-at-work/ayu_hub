import 'package:ayu_hub/features/ui/forum/forum.dart';
import 'package:ayu_hub/features/ui/shop/shop.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedindex = 0;

  List pages = [
    const Scaffold(
      backgroundColor: Colors.red,
    ),
    const ShoppingScreen(),
    const ForumScreen(),
    const Scaffold(
      backgroundColor: Colors.blue,
    ),
    const Scaffold(
      backgroundColor: Colors.amber,
    ),
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
          selectedItemColor: Colors.black,
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
              label: 'Forum',
              icon: Icon(
                Icons.group,
                size: 25,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'My Books',
              icon: Icon(
                Icons.book_outlined,
                size: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/800px-Pierre-Person.jpg'),
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
