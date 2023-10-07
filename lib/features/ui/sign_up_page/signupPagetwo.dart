import 'package:ayu_hub/features/ui/sign_up_page/clientdetailpagetwo.dart';

import 'package:flutter/material.dart';

class SignUpPageTwo extends StatelessWidget {
  const SignUpPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back)),
              Container(
                height: 200,
                width: double.infinity,
                // color: Colors.yellow,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/signup 1.jpg'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 28),
                child: Text(
                  'Create Your Account',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const ClientDetailPageTwo(),
            ],
          ),
        ),
      ),
    );
  }
}
