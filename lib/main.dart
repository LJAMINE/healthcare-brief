import 'package:flutter/material.dart';
import 'package:healthcare_brief/pages/login_page.dart';
import 'package:healthcare_brief/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      home: HealthappMainPage(),
    );
  }
}
