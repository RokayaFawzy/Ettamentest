import 'package:ettamentest/constant.dart';
import 'package:flutter/material.dart';

class ListRowMajors extends StatelessWidget {
  const ListRowMajors({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 15),
          Container(
            color: kCardColor,
            width: 82,
            height: 82,
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
          SizedBox(width: 13),
          Container(
            color: kCardColor,
            width: 82,
            height: 82,
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
            width: 13,
          ),
          Container(
            color: kCardColor,
            width: 82,
            height: 82,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/hypoallergenic (1).png"),
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
          ),
          SizedBox(width: 13),
          Container(
            color: kCardColor,
            width: 82,
            height: 82,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/tooth (1) (1).png"),
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
            width: 13,
          ),
          Container(
            color: kCardColor,
            width: 82,
            height: 82,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/kidney (1).png"),
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
            width: 13,
          ),
          Container(
            color: kCardColor,
            width: 82,
            height: 82,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/cancer-cell (1).png"),
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
          ),
          SizedBox(
            width: 13,
          ),
          Container(
            color: kCardColor,
            width: 82,
            height: 82,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/ear-plug (1).png"),
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
            width: 13,
          ),
          Container(
            color: kCardColor,
            width: 82,
            height: 82,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/eye-bags (1).png"),
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
            width: 13,
          ),
          Container(
            color: kCardColor,
            width: 82,
            height: 82,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.03, -0.38),
                  child: Image.asset("assets/images/amnesia (1).png"),
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
        ],
      ),
    );
  }
}
