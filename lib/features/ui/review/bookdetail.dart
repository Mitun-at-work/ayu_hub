import 'package:flutter/material.dart';

class BkDetail extends StatelessWidget {
  const BkDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            _details("Book Name", "Ayurveda for Beginners 2021"),
            _details("Author", "Colone LV"),
            _details("Publisher", " Farshore , HarperCollins London,UK"),
            _details("Language", " English"),
            _details("Paperback", "228 pages"),
            _details("ISBN-10", "1803343060"),
            _details("Country of Origin", "India"),
          ],
        ),
      ),
    );
  }

  Widget _details(heading1, heading2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            "$heading1 :",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Flexible(
            child: Text(
              " $heading2",
              style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
