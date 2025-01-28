import 'package:flutter/material.dart';
import 'package:healthcare_brief/models/needes_cat.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            InkWell(onTap: () {
              
            },)
          ],
        );
      }),
    );
  }
}
