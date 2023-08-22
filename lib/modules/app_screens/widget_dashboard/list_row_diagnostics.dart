import 'package:ettamentest/constant.dart';
import 'package:flutter/material.dart';

class ListRowDiagnostics extends StatelessWidget {
  const ListRowDiagnostics({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 15),
          Container(
            color: Color(0xff34B6FF),
            width: 110,
            height: 110,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/virus.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Align(
                    alignment: Alignment(-0.2, 0.5),
                    child: Text(
                      'Cellular and chemical',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: kFont,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 13),
          Container(
            color: Color(0xff18DF80),
            width: 110,
            height: 110,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/ultrasound.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Align(
                    alignment: Alignment(0.2, 0.5),
                    child: Text(
                      'Diagnostic imaging',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: kFont,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Container(
            color: Color(0xffF5B715),
            width: 110,
            height: 110,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/dna-structure.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment(0.2, 0.5),
                    child: Text(
                      'Genetic testing',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: kFont,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 13),
          Container(
            color: Color(0xffF84C6B),
            width: 110,
            height: 110,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/heart-beat.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment(0.2, 0.5),
                    child: Text(
                      'Measurement',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: kFont,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Container(
            color: Color(0xff34B6FF),
            width: 110,
            height: 110,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/patient.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment(0.2, 0.5),
                    child: Text(
                      'Physical and visual examination',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: kFont,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 13,
          ),
        ],
      ),
    );
  }
}
