import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class BranchReset extends StatelessWidget {
  const BranchReset({super.key});

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
                  alignment: const Alignment(0, -0.3),
                  child: Image.asset(
                    "assets/images/BG object (1).png",
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: const Alignment(0, -0.25),
                  child: Image.asset(
                    "assets/images/key.png",
                    fit: BoxFit.cover,
                    width: 49,
                    height: 47,
                  ),
                ),
                Align(
                  alignment: const Alignment(0, 0.2),
                  child: Container(
                    width: 250,
                    height: 66,
                    child: const Text("Your Password Has Been Reset!",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            fontFamily: kHomeFonts,
                            color: kPrimaryColor)),
                  ),
                ),
                Align(
                    alignment: const Alignment(0, 0.8),
                    child: CustomButton(
                      text: "Done",
                      onTap: () {},
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
