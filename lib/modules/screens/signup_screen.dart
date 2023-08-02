import 'package:ettamentest/modules/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../widgets/custom_botton.dart';
import '../widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? email, userName, confirmpassword, password;
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
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
                const SizedBox(height: 30),

                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 32,
                        height: 1.30,
                        fontFamily: 'Domine',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFormTextField(
                    onChange: (data) {
                      userName = data;
                    },
                    hintText: 'User Name',
                    suffixIcon: Icons.done),

                const SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                    onChange: (data) {
                      email = data;
                    },
                    hintText: 'Email',
                    suffixIcon: Icons.done),

                const SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                    obscureText: true,
                    onChange: (data) {
                      password = data;
                    },
                    hintText: 'Password',
                    suffixIcon: Icons.visibility_off_outlined),
                const SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                    obscureText: true,
                    onChange: (data) {
                      confirmpassword = data;
                    },
                    hintText: 'Confirm password',
                    suffixIcon: Icons.visibility_off_outlined),

                SizedBox(height: 20),

                CustomButton(
                  text: 'Sign In',
                  onTap: () async {},
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account ?',
                      style: TextStyle(
                        color: Color.fromARGB(142, 14, 36, 73),
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        '   Sign in ',
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                _buildOtherLogin(),
                const SizedBox(height: 5),
                // _lineEnd(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGreyText(String text, fontWeight) {
    return Text(
      text,
      style: const TextStyle(
        color: kPrimaryColor,
        fontSize: 16,
      ),
    );
  }

  Widget _buildOtherLogin() {
    return Center(
      child: Column(
        children: [
          const Text(
            'Sign up with social network:',
            style: TextStyle(
              color: Color(0XFF4B667F),
              fontSize: 16,
              fontFamily: kFont,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tab(
                icon: Image.asset("assets/images/Facebook.png"),
              ),
              Tab(
                icon: Image.asset("assets/images/twiter.png"),
              ),
              Tab(
                icon: Image.asset("assets/images/icon.png"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
