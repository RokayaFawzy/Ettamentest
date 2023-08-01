import 'package:flutter/material.dart';

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
      child: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: IconButton(
                    onPressed: () {
                      /*
                        TODO: call back fn
                      */
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
                const SizedBox(height: 120),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Color.fromARGB(203, 14, 36, 73),
                      fontSize: 33,
                      fontFamily: 'RobotoSlab',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
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
                const SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                    onChange: (data) {
                      email = data;
                    },
                    hintText: 'Email',
                    prefixIcon: Icons.done),
                // Padding(
                //   padding: EdgeInsets.all(12),
                //   child: TextField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       label: Text("Enter Username"),
                //       prefixIcon: Icon(Icons.person),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                    obscureText: true,
                    onChange: (data) {
                      password = data;
                    },
                    hintText: 'Password',
                    prefixIcon: Icons.remove_red_eye),
                // Padding(
                //   padding: EdgeInsets.all(12),
                //   child: TextField(
                //     obscureText: passToggle ? true : false,
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       label: Text("Enter Password"),
                //       prefixIcon: Icon(Icons.lock),
                //     ),
                //   ),
                // ),
                SizedBox(height: 20),
                _buildRememberForgot(),
                const SizedBox(height: 10),
                CustomButon(
                  text: 'Sign In',
                  onTap: () async {},
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'doesn\'t have an account ?',
                      style: TextStyle(
                        color: Color.fromARGB(142, 14, 36, 73),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushNamed(context, RegisterPage.id);
                      },
                      child: const Text(
                        '   Sign Up ',
                        style: TextStyle(
                          color: Color.fromARGB(216, 14, 36, 73),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                _buildOtherLogin(),
                const SizedBox(height: 5),
                _lineEnd(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget _buildRememberForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
                value: rememberUser,
                onChanged: (value) {
                  setState(() {
                    rememberUser = value!;
                  });
                }),
            _buildGreyText("Remember me"),
          ],
        ),
        TextButton(onPressed: () {}, child: _buildGreyText("Forgot password?")),
      ],
    );
  }

  Widget _buildOtherLogin() {
    return const Center();
  }

  Widget _lineEnd() {
    return Container(
      width: 375,
      height: 34,
      padding: const EdgeInsets.only(
        top: 21,
        left: 121,
        right: 120,
        bottom: 8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 134,
            height: 5,
            decoration: ShapeDecoration(
              color: const Color(0xFF123258),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
