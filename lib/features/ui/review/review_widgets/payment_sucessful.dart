import 'package:ayu_hub/features/ui/profile/mylibrary.dart';
import 'package:ayu_hub/features/ui/profile/profile.dart';
import 'package:flutter/material.dart';

class PaymentSucessful extends StatelessWidget {
  const PaymentSucessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 380,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage('assets/images/OIP (1).jpg'),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(
              height: 40,
            ),
            const Icon(
              Icons.verified,
              color: Colors.green,
              size: 70,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Payment Successful !',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Congratulation',
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            const Text(
              'you purchased this book',
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),
            const SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const MyLibraryPage()));
              },
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Text(
                    'Ok',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
