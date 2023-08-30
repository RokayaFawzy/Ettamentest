import 'package:flutter/material.dart';

import '../../constant.dart';
import '../widgets/custom_botton.dart';

class SignUpBracch extends StatelessWidget {
  const SignUpBracch({super.key});

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
                    "assets/images/user.png",
                    fit: BoxFit.cover,
                    width: 51,
                    height: 49,
                  ),
                ),
                const Align(
                  alignment:  Alignment(0, 0.2),
                  child: SizedBox(
                    width: 250,
                    height: 66,
                    child: Text("Account Created!",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            fontFamily: kHomeFonts,
                            color: kPrimaryColor)),
                  ),
                ),
                const Align(
                  alignment: Alignment(0, 0.3),
                  child: SizedBox(
                    width: 237,
                    height: 49,
                    child: Text(
                        "Your account had been created successfully.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: kFont,
                            color: kIconcolor)),
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
