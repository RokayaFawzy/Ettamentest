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
        children: [
          Image.asset('assets/images/images.jpeg', fit: BoxFit.cover),
          SizedBox(height: 6),
          Align(
            alignment: Alignment(-0.95, -0.95),
            child: Container(
              width: 180,
              height: 100,
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
          Align(
            alignment: Alignment(-0.95, -0.6),
            child: Container(
                width: 130,
                height: 35,
                child: CustomButton(
                  text: "Appointment",
                  onTap: () {},
                )),
          )
        ],
      ),
    ));
  }
}
//TODO:we want to complete the code the imge