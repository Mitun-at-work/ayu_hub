import 'package:ayu_hub/features/ui/login_page/welcomepage.dart';
import 'package:ayu_hub/features/ui/profile/purchased_history.dart';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 340, top: 20),
              child: Icon(
                Icons.dark_mode_outlined,
                size: 28,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(60),
                image: const DecorationImage(
                  image: AssetImage('assets/images/person(1).jpeg'),
                ),
              ),
              child: Stack(
                alignment: const Alignment(0.9, 1),
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Nicolas Adams',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'nicolasadams@gmail.com',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const Privacy(),
            const SizedBox(
              height: 15,
            ),
            const PurchasedHistory(),
            const SizedBox(
              height: 15,
            ),
            const MyLibrary(),
            const SizedBox(
              height: 15,
            ),
            const HelpAndSupport(),
            const SizedBox(
              height: 15,
            ),
            const Setting(),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const WelcomePage(),
                    ),
                  );
                },
                child: const Logout()),
          ],
        ),
      )),
    );
  }
}

class Logout extends StatelessWidget {
  const Logout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 15,
      ),
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 236, 236),
          borderRadius: BorderRadius.circular(40),
          // boxShadow: const [
          //   BoxShadow(blurRadius: 2, color: Colors.grey, offset: Offset(0, 2))
          // ]
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.power_settings_new,
                    size: 18,
                  ),
                  // Image.asset(
                  //   'assets/images/time.png',
                  //   height: 27,
                  // ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 15,
      ),
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 236, 236),
          borderRadius: BorderRadius.circular(40),
          // boxShadow: const [
          //   BoxShadow(blurRadius: 2, color: Colors.grey, offset: Offset(0, 2))
          // ]
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.settings_outlined,
                    size: 18,
                  ),
                  // Image.asset(
                  //   'assets/images/time.png',
                  //   height: 27,
                  // ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HelpAndSupport extends StatelessWidget {
  const HelpAndSupport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 15,
      ),
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 236, 236),
          borderRadius: BorderRadius.circular(40),
          // boxShadow: const [
          //   BoxShadow(blurRadius: 2, color: Colors.grey, offset: Offset(0, 2))
          // ]
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.question_mark_rounded, size: 18),
                  // Image.asset(
                  //   'assets/images/time.png',
                  //   height: 27,
                  // ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'Help & support',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLibrary extends StatelessWidget {
  const MyLibrary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 15,
      ),
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 236, 236),
          borderRadius: BorderRadius.circular(40),
          // boxShadow: const [
          //   BoxShadow(blurRadius: 2, color: Colors.grey, offset: Offset(0, 2))
          // ]
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.book_outlined, size: 22),
                  // Image.asset(
                  //   'assets/images/time.png',
                  //   height: 27,
                  // ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'My Library',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PurchasedHistory extends StatelessWidget {
  const PurchasedHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 15,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => const PurchasedHistoryPage()));
        },
        child: Container(
          height: 50,
          width: 340,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 236, 236, 236),
            borderRadius: BorderRadius.circular(40),
            // boxShadow: const [
            //   BoxShadow(blurRadius: 2, color: Colors.grey, offset: Offset(0, 2))
            // ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/time.png',
                      height: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Purchased History',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Privacy extends StatelessWidget {
  const Privacy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 15,
      ),
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 236, 236),
          borderRadius: BorderRadius.circular(40),
          // boxShadow: const [
          //   BoxShadow(blurRadius: 2, color: Colors.grey, offset: Offset(0, 2))
          // ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/lock.png',
                    height: 20,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  const Text(
                    'Privacy',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
