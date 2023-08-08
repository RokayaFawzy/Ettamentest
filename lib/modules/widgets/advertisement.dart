import 'package:ettamentest/constant.dart';
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
          RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: 'Get a free ',
                style: TextStyle(color: kPrimaryColor, fontSize: 20)),
            TextSpan(
                text: 'consultation',
                style: TextStyle(color: Colors.green, fontSize: 20)),
            TextSpan(
                text: 'ith cardiologist today!',
                style: TextStyle(color: kPrimaryColor, fontSize: 20))
          ]))
        ],
      ),
    ));
  }
}
//TODO:we want to complete the code