import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/branch_screens/edit_dr_appointment.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['Edit', 'Cancel'];

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: DropdownButton<String>(
                  icon: const Icon(
                    Icons.more_vert,
                    size: 16,
                  ),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 0,
                  ),
                  onChanged: (String? value) {
                    if (value == "Edit") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditDrAppointment(),
                      ),
                    );
                  } else if (value == "Cancel") {
                    Navigator.of(context).pop();
                  }
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),

              // IconButton(
              //   onPressed: () {
              //     _showDialog(context);
              //   },
              //   icon: const Icon(
              //     Icons.more_vert,
              //     size: 16,
              //   ),
              // ),
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

// void _showDialog(BuildContext context) {
//   String selectedAction = "Edit"; // Set an initial value

//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return
//           // AlertDialog(
//           //   elevation: 50,
//           //   title: const Text(
//           //     "My Appointment",
//           //     style: TextStyle(
//           //       color: kPrimaryColor,
//           //       fontSize: 16,
//           //       fontFamily: kHomeFonts,
//           //       fontWeight: FontWeight.w600,
//           //       height: 1.20,
//           //     ),
//           //   ),
//           //   content:
//           StatefulBuilder(
//         builder: (BuildContext context, StateSetter setState) {
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               DropdownButton<String>(
//                 value: selectedAction,
//                 hint: const Text("Select an action"),
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     selectedAction = newValue!;
//                   });

//                   // Handle different actions here
//                   if (newValue == "Edit") {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const EditDrAppointment(),
//                       ),
//                     );
//                   } else if (newValue == "Cancel") {
//                     Navigator.of(context).pop();
//                   }
//                 },
//                 items: <String>["Edit", "Cancel"].map((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//             ],
//           );
//         },
//       );
//       // );
//     },
//   );
// }
