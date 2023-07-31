import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  CustomButon({this.onTap, required this.text});
  VoidCallback? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(142, 14, 36, 73),
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(text,
            style: TextStyle(
              color: Colors.white,
            ),
            ),
        ),
      ),
    );
  }
}
