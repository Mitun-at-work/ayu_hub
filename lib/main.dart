// import 'package:ayu_hub/features/ui/login_page/login_page.dart';
// import 'package:ayu_hub/features/ui/login_page/login_page.dart';
import 'package:ayu_hub/features/ui/login_page/welcomepage.dart';
// import 'package:ayu_hub/features/ui/review/pdfviewer.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: const WelcomePage(),
      ),
    );
