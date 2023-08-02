import 'package:flutter/material.dart';

import '../../constant.dart';
import '../widgets/custom_botton.dart';
import '../widgets/custom_text_field.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  String? password,confirmpassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '             Reset password',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 16,
              fontFamily: kFont,
              fontWeight: FontWeight.w700,
              height: 1.70,
            ),
          ),
          shadowColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          // const Icon(Icons.arrow_back_ios,),
          // surfaceTintColor: Colors.white,
          // backgroundColor: Colors.white,
          // foregroundColor: Colors.white,

          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: kPrimaryColor)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    " Enter new password and confirm ",
                    style: TextStyle(
                      color: Color.fromARGB(142, 14, 36, 73),
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                      // letterSpacing: 1,
                      wordSpacing: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomFormTextField(
                  obscureText: true,
                  onChange: (data) {
                    password = data;
                  },
                  hintText: 'Password',
                  suffixIcon: Icons.visibility_off_outlined),
              const SizedBox(height: 20),
              CustomFormTextField(
                  obscureText: true,
                  onChange: (data) {
                    confirmpassword = data;
                  },
                  hintText: 'Confirm password',
                  suffixIcon: Icons.visibility_off_outlined),
              const SizedBox(height: 20),
              CustomButton(text: "Change Password"),
            ],
          ),
        ),
      ),
    );
  }
}
