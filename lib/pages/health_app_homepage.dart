import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthcare_brief/widgets/doctor_profile.dart';
import 'package:iconsax/iconsax.dart';

class HealthHomepage extends StatelessWidget {
  const HealthHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi,Amine",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "How are you feeling today",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black45,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
                color: Colors.white),
            child: Icon(Iconsax.notification, size: 25),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
                color: Colors.white),
            child: Icon(Iconsax.search_normal, size: 25),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(14),
        children: [
          DoctorProfile(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Health Needs",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
