import 'package:ettamentest/modules/design_screens/first_screen.dart';
import 'package:ettamentest/modules/screens/forgot_password.dart';
import 'package:ettamentest/modules/screens/reset_password.dart';
import 'package:ettamentest/modules/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../widgets/custom_botton.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  String? email, password;
  bool rememberUser = false;
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
            iconTheme: IconThemeData(color: kPrimaryColor)),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              shrinkWrap: true,
              children: [
                const SizedBox(height: 60),

                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 32,
                        height: 1.30,
                        fontFamily: 'Domine',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      " Sign in to continue ",
                      style: TextStyle(
                        color: Color.fromARGB(142, 14, 36, 73),
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                        // letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                    onChange: (data) {
                      email = data;
                    },
                    hintText: 'Email',
                    suffixIcon: Icons.done),

                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    obscureText: true,
                    onChange: (data) {
                      password = data;
                    },
                    hintText: 'Password',
                    suffixIcon: Icons.visibility_off_outlined),

                SizedBox(height: 20),
                _buildRememberForgot(),
                const SizedBox(height: 10),
                CustomButton(
                  text: 'Sign In',
                  onTap: () async {},
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account ?',
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
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        '   Sign Up ',
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

  Widget _buildRememberForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  return Color.fromARGB(90, 3, 16, 26).withOpacity(.32);
                }),
                value: rememberUser,
                onChanged: (value) {
                  setState(() {
                    rememberUser = value!;
                  });
                }),
            _buildGreyText("Remember me", FontWeight.w100)
          ],
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgotPassword(),
                ),
              );
            },
            child: _buildGreyText("Forgot password?", FontWeight.w400)),
      ],
    );
  }

  Widget _buildOtherLogin() {
    const _kFontFam = 'c1';
    const String? _kFontPkg = null;

    const IconData facebook =
        IconData(0xf09a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
    const IconData google_plus_g =
        IconData(0xf0d5, fontFamily: _kFontFam, fontPackage: _kFontPkg);
    const IconData twitter =
        IconData(0xf309, fontFamily: _kFontFam, fontPackage: _kFontPkg);
    return const Center(
      child: Column(
        children: [
          Text(
            'Sign in with social network:',
            style: TextStyle(
              color: Color.fromARGB(142, 14, 36, 73),
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tab(
                icon: Icon(facebook, color: kPrimaryColor),
              ),
              Tab(
                icon: Icon(
                  google_plus_g,
                  color: kPrimaryColor,
                ),
              ),
              Tab(
                icon: Icon(
                  twitter,
                  color: kPrimaryColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
