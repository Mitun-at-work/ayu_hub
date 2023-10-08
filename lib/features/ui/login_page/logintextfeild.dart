import 'package:flutter/material.dart';

class LoginTextFeild extends StatelessWidget {
  final String hintText;
  final Widget icon;
  const LoginTextFeild({super.key, required this.hintText, required this.icon,});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        child: TextField(
          cursorWidth: 1.4,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: icon,
            border: InputBorder.none,
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
