import 'package:ayu_hub/features/ui/review/review_widgets/inputfield.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/title.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class EnterChat extends StatelessWidget {
  const EnterChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Enter your Thoughts",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const TextTitle(title: "Share a Video or Photo"),
              const SizedBox(height: 10),
              DottedBorder(
                borderType: BorderType.RRect,
                strokeCap: StrokeCap.butt,
                radius: const Radius.circular(10),
                color: Colors.black,
                strokeWidth: 2,
                dashPattern: const [
                  5,
                  5,
                ],
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add_a_photo,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const TextTitle(title: "Text Message"),
              const SizedBox(height: 10),
              const InputField(
                hintText: "Share your thoughts",
                maxLines: 2,
              ),
              const SizedBox(height: 50),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade600,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
