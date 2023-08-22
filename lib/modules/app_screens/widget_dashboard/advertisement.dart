import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class AdvertisementLogo extends StatelessWidget {
  const AdvertisementLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Image.asset(
            'assets/images/images.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment(-0.95, -0.95),
                  child: Container(
                    width: 180,
                    height: 100,
                    padding: EdgeInsets.all(8),
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Get A ',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 18,
                              fontFamily: kHomeFonts)),
                      TextSpan(
                          text: 'Free Consultation',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontFamily: kHomeFonts)),
                      TextSpan(
                          text: 'With Cardiologist Today!',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 18,
                              fontFamily: kHomeFonts))
                    ])),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Align(
                  alignment: Alignment(-0.95, -0.6),
                  child: Container(
                    width: 120,
                    height: 35,
                    child: CustomButton(
                      text: "Appointment",
                      onTap: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
//TODO:we want to complete the code the imge