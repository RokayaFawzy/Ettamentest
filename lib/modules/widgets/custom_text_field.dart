import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({this.hintText, this.onChange, this.obscureText=false, this.prefixIcon});


  final String? hintText;
  final Function(String)? onChange;
  final bool? obscureText;
  final IconData? prefixIcon;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText! ,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
      },
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
