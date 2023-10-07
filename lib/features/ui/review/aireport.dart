import 'package:ayu_hub/features/ui/review/review_widgets/title.dart';
import 'package:flutter/material.dart';

class AiReport extends StatefulWidget {
  const AiReport({super.key});

  @override
  State<AiReport> createState() => _AiReportState();
}

class _AiReportState extends State<AiReport> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [TextTitle(title: "Review Summary")],
        ),
      ),
    );
  }
}
