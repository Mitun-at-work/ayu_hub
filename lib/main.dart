import 'package:ayu_hub/features/functions/build_theme.dart';
import 'package:ayu_hub/features/ui/shop/shop.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: buildThemeApp(),
        home: const ForumScreen(),
      ),
    );
