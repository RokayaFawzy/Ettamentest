import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/branch_screens/edit_dr_appointment.dart';
import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class DrCardUpcoming extends StatelessWidget {
  const DrCardUpcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.only(left: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Adjust alignment
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
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
          ),
          const SizedBox(width: 8), // Adjust spacing
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. Georgia Griffin",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
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
                      Icons.check,
                      size: 12,
                      color: Colors.green,
                    ),
                    Text(
                      "  Confirmed",
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
                },
                icon: const Icon(
                  Icons.more_vert,
                  size: 16,
                ),
              ),
              const SizedBox(height: 20), // Adjust spacing
            
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
