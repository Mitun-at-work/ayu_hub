import 'package:ayu_hub/features/ui/forum/forum.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: const ForumScreen(),
      ),
    );
