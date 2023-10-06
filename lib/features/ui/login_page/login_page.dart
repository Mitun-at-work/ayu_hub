import 'package:ayu_hub/features/ui/admin/navbar.dart';
import 'package:ayu_hub/features/ui/sign_up_page/signup.dart';
import 'package:ayu_hub/navbar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
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
            height: 400,
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
          const GoogleLogin(),
          const SizedBox(height: 20),
          const AppleLogin(),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
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
                        builder: (BuildContext context) => const SignUp()));
                  },
                  child: const Text(
                    'Sign Up ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class AppleLogin extends StatelessWidget {
  const AppleLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // width: double.infinity,
      width: 320,
      decoration: BoxDecoration(
          color: Colors.purple.shade900,
          borderRadius: BorderRadius.circular(30)),
      child: ListTile(
        leading: const Padding(
          padding: EdgeInsets.only(bottom: 1),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/applelogo.jpg'),
            radius: 18,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(bottom: 2, right: 25),
          child: Text('Login With Apple',
              style: TextStyle(
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
              builder: (BuildContext context) => const AdminNavbar(),
            ),
          );
        },
      ),
    );
  }
}

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({
    super.key,
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
        leading: const Padding(
          padding: EdgeInsets.only(bottom: 1),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/googlelogo.jpg'),
            radius: 18,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(bottom: 2, right: 25),
          child: Text('Login With Google',
              style: TextStyle(
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
              builder: (BuildContext context) => const Navbar(),
            ),
          );
        },
      ),
    );
  }
}
