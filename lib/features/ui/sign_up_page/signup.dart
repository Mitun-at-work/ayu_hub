import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
                color: Colors.black54,
              ),
              const SizedBox(
                height: 18,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Name',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SignUpNAme(),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SignUpEmail(),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Passward',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SignUpPassward(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  height: 60,
                  width: 270,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    // gradient: LinearGradient(
                    //   begin: Alignment.topLeft,
                    //   end: Alignment.bottomCenter,
                    //   colors: [
                    //     Color.fromARGB(255, 222, 98, 244),
                    //     Color.fromARGB(255, 208, 44, 237),
                    //     Color.fromARGB(255, 194, 45, 220),
                    //     Color.fromARGB(255, 175, 19, 202),
                    //   ],
                    // )
                  ),
                  child: const Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Sign Up ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 200,
                width: 340,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/download (1).png'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPassward extends StatelessWidget {
  const SignUpPassward({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 350,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(-1, 2),
              blurRadius: 1.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}

class SignUpEmail extends StatelessWidget {
  const SignUpEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 350,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(-1, 2),
              blurRadius: 1.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}

class SignUpNAme extends StatelessWidget {
  const SignUpNAme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 350,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(-1, 2),
              blurRadius: 1.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
