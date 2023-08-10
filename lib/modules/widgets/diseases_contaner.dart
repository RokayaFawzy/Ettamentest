import 'package:ettamentest/constant.dart';
import 'package:flutter/material.dart';

class Diseases_contaner extends StatefulWidget {
  const Diseases_contaner({super.key});

  @override
  State<Diseases_contaner> createState() => _Diseases_contanerState();
}

class _Diseases_contanerState extends State<Diseases_contaner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Container(
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Container(
                        color: kCardColor,
                        width: 102,
                        height: 112,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0.03, -0.38),
                              child: Image.asset("assets/images/heart (1).png"),
                            ),
                            Align(
                              alignment: Alignment(0.2, 0.5),
                              child: Text(
                                'Cardiology',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: kFont,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        color: kCardColor,
                        width: 102,
                        height: 112,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0.03, -0.38),
                              child: Image.asset("assets/images/baby (1).png"),
                            ),
                            Align(
                              alignment: Alignment(0.2, 0.5),
                              child: Text(
                                'Gynecology',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: kFont,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        color: kCardColor,
                        width: 102,
                        height: 112,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0.03, -0.38),
                              child: Image.asset(
                                  "assets/images/hypoallergenic (1).png"),
                            ),
                            Align(
                              alignment: Alignment(0.2, 0.5),
                              child: Text(
                                'Allergists',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: kFont,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Container(
                        color: kCardColor,
                        width: 102,
                        height: 112,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0.03, -0.38),
                              child: Image.asset(
                                  "assets/images/tooth (1) (1).png"),
                            ),
                            Align(
                              alignment: Alignment(0.2, 0.5),
                              child: Text(
                                'Dentistry',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: kFont,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        color: kCardColor,
                        width: 102,
                        height: 112,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0.03, -0.38),
                              child:
                                  Image.asset("assets/images/kidney (1).png"),
                            ),
                            Align(
                              alignment: Alignment(0.2, 0.5),
                              child: Text(
                                'Nephrology',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: kFont,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        color: kCardColor,
                        width: 102,
                        height: 112,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0.03, -0.38),
                              child: Image.asset(
                                  "assets/images/cancer-cell (1).png"),
                            ),
                            Align(
                              alignment: Alignment(0.2, 0.5),
                              child: Text(
                                'Oncology',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: kFont,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Container(
                        color: kCardColor,
                        width: 102,
                        height: 112,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0.03, -0.38),
                              child:
                                  Image.asset("assets/images/ear-plug (1).png"),
                            ),
                            Align(
                              alignment: Alignment(0.2, 0.5),
                              child: Text(
                                'Otolaryngology',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: kFont,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        color: kCardColor,
                        width: 102,
                        height: 112,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0.03, -0.38),
                              child:
                                  Image.asset("assets/images/eye-bags (1).png"),
                            ),
                            Align(
                              alignment: Alignment(0.2, 0.5),
                              child: Text(
                                'Ophthalmology',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: kFont,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        color: kCardColor,
                        width: 102,
                        height: 112,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0.03, -0.38),
                              child:
                                  Image.asset("assets/images/amnesia (1).png"),
                            ),
                            Align(
                              alignment: Alignment(0.2, 0.5),
                              child: Text(
                                'Neurology',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: kFont,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
