import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: double.infinity,
        color: color,
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(color: Colors.green, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
