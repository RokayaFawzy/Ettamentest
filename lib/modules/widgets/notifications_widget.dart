import 'package:ettamentest/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsWidgets extends StatelessWidget {
  const NotificationsWidgets({super.key});
  final int n = 5;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(n, (index) {
      return Column(children: [
        const SizedBox(height: 6),
        Column(
          children: [
            const Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                  size: 25,
                ),
                SizedBox(width: 10),
                Text(
                  "Your Blood Test Is Ready",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor,
                      fontFamily: kHomeFonts),
                ),
              ],
            ),
            const SizedBox(height: 17),
            Row(
              children: [
                Container(
                  width: 340,
                  height: 50,
                  child: Text(
                      "Consequat ut ea dolor aliqua laborum tempor Lorem culpa.",
                      style: TextStyle(
                        fontSize: 14,
                        color: kPrimaryColor.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                      )),
                )
              ],
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "23 Jan 2023 at 3:45 pm",
                  style: TextStyle(
                    fontSize: 10,
                    color: kPrimaryColor.withOpacity(0.6),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.mail_outline_sharp,
                      // size: 25,
                    ),
                    SizedBox(width: 5),
                    Text("Mark as read",
                        style: TextStyle(
                          fontSize: 12,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Divider(
              color: kPrimaryColor,
              thickness: 0.1,
              height: 8,
            ),
          ],
        ),
      ]);
    }));
  }
}
