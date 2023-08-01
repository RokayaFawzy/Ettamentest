import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({super.key, this.hintText, this.onChange, this.obscureText=false, this.prefixIcon});


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
        return null;
      },
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),

      ),
      
    );
  }
}
