import 'package:ayu_hub/features/ui/admin/navbar.dart';
import 'package:ayu_hub/features/ui/login_page/logintextfeild.dart';
import 'package:ayu_hub/features/ui/sign_up_page/signup__.dart';
import 'package:flutter/material.dart';

class StaffLoginPage extends StatelessWidget {
  const StaffLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                textAlign: TextAlign.center,
                'Find Your Favorite Book Here ',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: double.infinity,
              // color: Colors.red,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/login 3 (2).jpg'),
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            const LoginTextFeild(
              hintText: "Enter your Staff ID",
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const LoginTextFeild(
              hintText: "Password",
              icon: Icon(
                Icons.key_outlined,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const StaffLoginButton(
              title: "Login",
              pages: AdminNavbar(),
              height: 20,
              width: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account? ',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SignupPage()));
                    },
                    child: Text(
                      'Sign Up ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple.shade900),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class StaffLoginButton extends StatelessWidget {
  final String title;
  final Widget pages;

  final double height;
  final double width;
  const StaffLoginButton({
    super.key,
    required this.title,
    required this.pages,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // width: double.infinity,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.purple.shade900,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 2, right: 25),
          child: Text(title,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center),
        ),
        dense: true,
        visualDensity: const VisualDensity(vertical: 3), // to expand
        onTap: () {
          // tap actions
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => pages,
            ),
          );
        },
      ),
    );
  }
}
