import 'package:ettamentest/constant.dart';
import 'package:flutter/material.dart';

class PastAppointment extends StatelessWidget {
  const PastAppointment({super.key});
  final int n = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(n, (index) {
      return Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start, // Adjust alignment
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
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
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Cardiologist",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: kIconcolor,
                    ),
                  ),
                  SizedBox(height: 14), // Adjust spacing
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 9.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    r"$" "24",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: kHomeFonts,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 12,
                    color: Colors.green,
                  ),
                  Text(
                    "  Jan 15, Sunday",
                    style: TextStyle(
                      fontSize: 10,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 88,
              margin: const EdgeInsets.all(11),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Adjust the border radius
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Lieve review',
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
            Container(
              width: 88,
              margin: const EdgeInsets.all(11),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: kPrimaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Adjust the border radius
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Prescription',
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
          ],
        ),
        const Divider(
          color: kPrimaryColor,
          thickness: 0.1,
          height: 9,
        ),
        const SizedBox(height: 5)
      ]);
    }));
  }
}
