import 'package:ayu_hub/features/ui/login_page/feildbutton.dart';
import 'package:ayu_hub/features/ui/login_page/login_page.dart';
import 'package:ayu_hub/features/ui/login_page/officiallogin.dart';
import 'package:ayu_hub/features/ui/login_page/stafflogin.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Welcome to",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: " Learnify",
                        style: TextStyle(
                          color: Colors.deepPurple.shade900,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Center(
                child: Image(
                  height: 400,
                  width: double.infinity,
                  image: AssetImage("assets/images/Welcome logo.png"),
                ),
              ),
              const Text(
                "Select your Field",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20),
              const FeildButton(
                title: "Student",
                pages: LoginPage(),
                link: "assets/images/student-with-graduation-cap.png",
                height: 20,
                width: 20,
              ),
              const SizedBox(height: 20),
              const FeildButton(
                title: "Staff",
                pages: StaffLoginPage(),
                link: "assets/images/teacher.png",
                height: 30,
                width: 30,
              ),
              const SizedBox(height: 20),
              const FeildButton(
                title: "Official",
                pages: OfficialLoginPage(),
                link: "assets/images/team-leader.png",
                height: 20,
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
