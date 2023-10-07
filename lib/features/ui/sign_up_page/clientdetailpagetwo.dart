import 'package:ayu_hub/features/ui/login_page/login_page.dart';
import 'package:flutter/material.dart';

class ClientDetailPageTwo extends StatelessWidget {
  const ClientDetailPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 28,
          ),
          child: Text(
            'School / Institution Name',
            style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 45,
            width: 320,
            decoration: const BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const TextField(
              cursorWidth: 1.4,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.school_outlined,
                  color: Colors.black,
                ),
                border: InputBorder.none,
              ),
              maxLines: 1,
            ),
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 28,
          ),
          child: Text(
            'Year Of Graduation',
            style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 45,
            width: 320,
            decoration: const BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const TextField(
              cursorWidth: 1.4,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                border: InputBorder.none,
              ),
              maxLines: 1,
            ),
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 28,
          ),
          child: Text(
            'Degree',
            style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 45,
            width: 320,
            decoration: const BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const TextField(
              cursorWidth: 1.4,
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.workspace_premium, color: Colors.black87),
                border: InputBorder.none,
              ),
              maxLines: 1,
            ),
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 28,
          ),
          child: Text(
            'Registor ID',
            style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 45,
            width: 320,
            decoration: const BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const TextField(
              cursorWidth: 1.4,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.badge,
                  color: Colors.black,
                ),
                border: InputBorder.none,
              ),
              maxLines: 1,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 120,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const LoginPage()));
            },
            child: Container(
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.purple.shade900,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 25),
        const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Row(
            children: [
              Text(
                'Already Have an Account?',
                style: TextStyle(fontSize: 13, color: Colors.black54),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'Log in',
                style: TextStyle(
                    fontSize: 13, color: Color.fromARGB(255, 92, 19, 141)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
