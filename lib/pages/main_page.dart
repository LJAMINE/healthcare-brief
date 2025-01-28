import 'package:flutter/material.dart';
import 'package:healthcare_brief/components/color.dart';
import 'package:healthcare_brief/pages/health_app_homepage.dart';
import 'package:iconsax/iconsax.dart';

class HealthappMainPage extends StatefulWidget {
  const HealthappMainPage({super.key});

  @override
  State<HealthappMainPage> createState() => _HealthappMainPageState();
}

class _HealthappMainPageState extends State<HealthappMainPage> {
  int selectedIndex = 0;
  final List pages = [
    HealthHomepage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black26,
          selectedItemColor: kPrimaryColor,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Iconsax.home5), label: ""),
            BottomNavigationBarItem(icon: Icon(Iconsax.calendar_1), label: ""),
            BottomNavigationBarItem(icon: Icon(Iconsax.message), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ""),
          ]),
      body: pages[selectedIndex],
    );
  }
}
