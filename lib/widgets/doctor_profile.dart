import 'package:flutter/material.dart';
import 'package:healthcare_brief/components/color.dart';
import 'package:iconsax/iconsax.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: double.maxFinite,
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: kPrimaryColor),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1612276529731-4b21494e6d71?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZG9jdG9yJTIwcG9ydHJhaXR8ZW58MHx8MHx8fDA%3D"))),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "dr.roben amorem",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "dentiste specialiste ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: profileCardBgColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 35,
                width: 290,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Iconsax.calendar_1,
                      color: Colors.white,
                    ),
                    Text(
                      'Today',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Iconsax.clock,
                      color: Colors.white,
                    ),
                    Text(
                      '12:30 - 16:15',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
