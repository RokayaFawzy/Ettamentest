import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

import '../branch_screens/dr_details.dart';

class DrInformationCard extends StatelessWidget {
  const DrInformationCard({super.key});
  final int n = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(n, (index) {
        return Column(
          children: [
            Row(children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  SizedBox(
                      width: 110,
                      height: 110,
                      child: Image.asset('assets/images/images.jpeg',
                          fit: BoxFit.cover)),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber[800],
                          size: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("5,0"),
                      ],
                    ),
                  ),
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
                    SizedBox(height: 8),
                    Text(r"$" "24",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: kHomeFonts)),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 12,
                          color: Colors.green,
                        ),
                        Text("10:30 am - 4:30 pm",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.star_border_purple500_outlined,
                    size: 20,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DrDetails()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        elevation: 0,
                        shape: const BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.horizontal(left: Radius.zero))),
                    child: const Text(
                      'Appointment',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: kPrimaryColor,
              thickness: 0.1,
              height: 9,
            ),
            // "${index + 1}"
          ],
        );
      }),
    );
  }
}
//  Image.asset(
//                     'assets/images/123.jpg',
//                     fit: BoxFit.cover,
//                   )
