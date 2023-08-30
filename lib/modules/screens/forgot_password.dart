import 'package:ettamentest/modules/screens/reset_password.dart';
import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../widgets/custom_text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  static String id = 'ForgotPassword';

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '             Forgot password',
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
                    " Please enter your email address. "
                    "You will receive a link to create a new password via email ",
                    style: TextStyle(
                      color: Color.fromARGB(142, 14, 36, 73),
                      fontSize: 18,
                      wordSpacing: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                  onChange: (data) {
                    email = data;
                  },
                  hintText: 'Email',
                  suffixIcon: Icons.done),
              const SizedBox(height: 20),
              CustomButton(
                text: "Send",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPassword(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
