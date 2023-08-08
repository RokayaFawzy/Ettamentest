import 'package:ettamentest/constant.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/BG object (1).png",
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment(0, -0.1),
                  child: Image.asset(
                    "assets/images/Rectangle 126.png",
                    fit: BoxFit.cover,
                    width: 37,
                    height: 35,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Ettamen",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          fontFamily: kHomeFonts,
                          color: kPrimaryColor)),
                ),
                Align(
                  alignment: Alignment(0, 0.1),
                  child: Image.asset(
                    "assets/images/Rectangle 127.png",
                    fit: BoxFit.cover,
                    width: 37,
                    height: 35,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
