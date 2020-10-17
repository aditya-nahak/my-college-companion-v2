import 'package:flutter/material.dart';
import 'package:mycollegecompanion_v2/theme/routes.dart';
import 'package:mycollegecompanion_v2/views/opening_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My College Companion-v2",
      routes: AppRoutes.define(),
      home: OpeningView(),
    );
  }
}
