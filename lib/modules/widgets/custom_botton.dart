import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, required this.text});
  VoidCallback? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: kPrimaryColor,
        ),
        width: double.infinity,
        height: 50,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'NunitoSans',
              fontSize: 14,
              fontWeight: FontWeight.w700,
              height: 1.70,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
