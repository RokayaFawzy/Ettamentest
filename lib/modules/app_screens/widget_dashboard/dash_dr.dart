import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/branch_screens/dr_details.dart';
import 'package:flutter/material.dart';

class DashboardDrCard extends StatelessWidget {
  const DashboardDrCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.all(3),
      child: Column(
        children: [
          Row(children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SizedBox(
                    width: 88,
                    height: 88,
                    child: Image.asset('assets/images/images.jpeg',
                        fit: BoxFit.cover)),
                const SizedBox(
                  width: 2,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr. Georgia Griffin",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor)),
                  SizedBox(height: 8),
                  Text("Сardiologist",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: kIconcolor)),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 12,
                        color: Colors.green,
                      ),
                      Text("  at 5:15 pm",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  )
                ],
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.more_vert,
                  size: 20,
                ),
                SizedBox(
                  height: 35,
                ),
                Text(r"$" "24",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: kHomeFonts,
                        color: kPrimaryColor)),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
