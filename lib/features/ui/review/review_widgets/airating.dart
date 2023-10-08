import 'package:flutter/material.dart';

class RatingSummaryWidget extends StatelessWidget {
  final String field;
  final Map<int, int> ratings; // Map of rating value (1-5) to count

  const RatingSummaryWidget({
    super.key,
    required this.ratings,
    required this.field,
  });

  @override
  Widget build(BuildContext context) {
    // Calculate the total number of ratings
    int totalRatings = ratings.values.reduce((a, b) => a + b);

    // Calculate the percentage of each rating
    Map<int, double> percentages = {};
    ratings.forEach((key, value) {
      percentages[key] = (value / totalRatings) * 100;
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          field,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        for (int i = 5; i >= 1; i--) // Loop through ratings in reverse order
          Row(
            children: [
              Text('$i Star:'),
              const SizedBox(width: 10),
              Expanded(
                child: LinearProgressIndicator(
                  minHeight: 10,
                  value: percentages[i]! / 100,
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(
                      Colors.amber), // Change this to your preferred color
                ),
              ),
              const SizedBox(width: 10),
              Text('${percentages[i]?.toStringAsFixed(2)}%'),
            ],
          ),
        const SizedBox(height: 10),
        Text(
          'Based on $totalRatings ratings',
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
