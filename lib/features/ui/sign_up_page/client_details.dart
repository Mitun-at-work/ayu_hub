import 'package:ayu_hub/features/ui/sign_up_page/signupPagetwo.dart';
import 'package:flutter/material.dart';

class ClientDetail extends StatelessWidget {
  ClientDetail({super.key});
  final List<String> singUpCategory = [
    "Name",
    "Date Of Birth"
        "Gender",
    "Email ",
    "Phone Number"
  ];

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
            'Name',
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
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.purple.shade900, blurRadius: 2)
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const TextField(
              cursorWidth: 1.4,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
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
            'Date Of Birth',
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
            decoration:  BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.purple.shade900, blurRadius: 2)],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const TextField(
              cursorWidth: 1.4,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.date_range,
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
            'Gender',
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
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.purple.shade900, blurRadius: 2)],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const TextField(
              cursorWidth: 1.4,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: Colors.black),
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
            'Email',
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
            decoration:  BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.purple.shade900, blurRadius: 2)],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const TextField(
              cursorWidth: 1.4,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
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
            'Phone number',
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
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.purple.shade900, blurRadius: 2)],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const TextField(
              cursorWidth: 1.4,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone,
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
        Padding(
          padding: const EdgeInsets.only(
            left: 270,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const SignUpPageTwo()));
            },
            child: Container(
              height: 45,
              width: 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Padding(
                padding: EdgeInsets.only(left: 18),
                child: Row(
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(fontSize: 17),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 24,
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
