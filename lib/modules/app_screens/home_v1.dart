import 'package:ettamentest/constant.dart';
import 'package:flutter/material.dart';

class HomeV1 extends StatefulWidget {
  const HomeV1({super.key});

  @override
  State<HomeV1> createState() => _HomeV1State();
}

class _HomeV1State extends State<HomeV1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("My appointments",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: kHomeFonts)),
                        const SizedBox(height: 20),
                        //FirstContaner
                        Container(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 30, right: 50, left: 50),
                          color: kPrimaryColor,
                          child: const Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "January",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: kHomeFonts,
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "21",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: kHomeFonts,
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "at 4:30pm",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: kHomeFonts,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
