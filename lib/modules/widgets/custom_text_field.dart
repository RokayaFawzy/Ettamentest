import 'package:ettamentest/constant.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.inputType,
      this.hintText,
      this.onChange,
      this.obscureText = false,
      this.suffixIcon});

  final String? hintText;
  final Function(String)? onChange;
  TextInputType? inputType;
  final bool? obscureText;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      onChanged: onChange,
      keyboardType: inputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        iconColor: kPrimaryColor,
        suffixIconColor: kPrimaryColor,
        hintText: hintText,
        hintStyle: const TextStyle(
            height: 0.1,
            color: kPrimaryColor,
            fontSize: 16,
            fontFamily: 'NunitoSans',
            fontWeight: FontWeight.w400),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: kTextfield,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
