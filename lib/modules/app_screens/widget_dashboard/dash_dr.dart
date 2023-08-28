import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/branch_screens/dr_details.dart';
import 'package:ettamentest/modules/branch_screens/edit_dr_appointment.dart';
import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class DashboardDrCard extends StatelessWidget {
  const DashboardDrCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.only(left: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Adjust alignment
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              SizedBox(
                width: 88,
                height: 88,
                child: Image.asset(
                  'assets/images/images.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
            ],
          ),
          const SizedBox(width: 8), // Adjust spacing
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. Georgia Griffin",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Cardiologist",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: kIconcolor,
                  ),
                ),
                SizedBox(height: 14), // Adjust spacing
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 12,
                      color: Colors.green,
                    ),
                    Text(
                      "  at 5:15 pm",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  _showDialog(context);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const SeeMore(),
                  //   ),
                  // );
                },
                icon: const Icon(
                  Icons.more_vert,
                  size: 16,
                ),
              ),
              const SizedBox(height: 20), // Adjust spacing
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  r"$" "24",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: kHomeFonts,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            elevation: 50,
            title: const Text(
              "My Appointment",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                  fontFamily: kHomeFonts,
                  fontWeight: FontWeight.w600,
                  height: 1.20),
            ),
            content: SingleChildScrollView(
                child: ListBody(children: [
              Row(
                children: [
                  Container(
                      width: 100,
                      child: CustomButton(
                        text: "Edit",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditDrAppointment(),
                            ),
                          );
                        },
                      )),
                  const SizedBox(width: 30),
                  Container(
                      width: 100,
                      child: CustomButton(
                        text: "Cancel",
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      )),
                ],
              ),
            ])));
      });
}
