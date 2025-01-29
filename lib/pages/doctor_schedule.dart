import 'package:flutter/material.dart';
import 'package:healthcare_brief/components/color.dart';
import 'package:healthcare_brief/models/schedule_model.dart';
import 'package:iconsax/iconsax.dart';

class DoctorSchedule extends StatefulWidget {
  const DoctorSchedule({super.key});

  @override
  State<DoctorSchedule> createState() => _DoctorScheduleState();
}

class _DoctorScheduleState extends State<DoctorSchedule> {
  String selectedOption = "Upcoming";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //top
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black12),
                      color: Colors.white),
                  child: Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                ),
                Text(
                  "Schedule",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            //options
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildOption("Upcoming"),
                  buildOption("Complete"),
                  buildOption("Result"),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(child: buildContent())
          ],
        ),
      )),
    );
  }

  Widget buildOption(String option) {
    return Container(
      padding: EdgeInsets.only(top: 14, bottom: 13, right: 25, left: 36),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: selectedOption == option ? kPrimaryColor : Colors.transparent),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedOption = option;
          });
        },
        child: Text(
          option,
          style: TextStyle(
              color: selectedOption == option ? Colors.white : Colors.black38,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget buildContent() {
    if (selectedOption == "Upcoming") {
      return buildUpcoming();
    } else if (selectedOption == "Complete") {
      return buildComplete();
    } else if (selectedOption == "Result") {
      return buildResult();
    }
    return const SizedBox.shrink();
  }

  //content for upcoming
  Widget buildUpcoming() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: scheduleDoctors.length,
        itemBuilder: (context, index) {
          final doctor = scheduleDoctors[index];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Container(
              width: double.maxFinite,
              height: 215,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: secondaryBgColor),
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
                              image: NetworkImage(doctor.profile),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doctor.name,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              doctor.position,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black12),
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
                        color: cardBgColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 35,
                      width: 290,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Iconsax.calendar_1,
                            color: Colors.black54,
                          ),
                          Text(
                            doctor.date,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black45),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Iconsax.clock,
                            color: Colors.black45,
                          ),
                          Text(
                            doctor.time,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black45),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kPrimaryColor,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 5),
                            child: Text(
                              "cancel",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: kPrimaryColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 5),
                            child: Text(
                              "rescheduled",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white54),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  //content for complete
  Widget buildComplete() {
    return Center(
      child: Text(
        "no appointment complete",
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87),
      ),
    );
  }

  //content for result
  Widget buildResult() {
    return Center(
      child: Text(
        "no appointment result",
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87),
      ),
    );
  }
}
