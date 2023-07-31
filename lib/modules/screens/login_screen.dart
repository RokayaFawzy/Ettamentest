import 'package:flutter/material.dart';
import 'package:icon_forest/icon_forest.dart';

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
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              SizedBox(
                height: 180,
              ),
              Padding(
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
              SizedBox(
                height: 5,
              ),
              Padding(
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
              SizedBox(
                height: 10,
              ),
              CustomFormTextField(
                  onChange: (data) {
                    email = data;
                  },
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.person)),
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
                  prefixIcon: Icon(Icons.person)),
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
              SizedBox(
                height: 30,
              ),
              _buildRememberForgot(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'doesn\'t have an account ?',
                    style: TextStyle(
                      color: Color.fromARGB(142, 14, 36, 73),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, RegisterPage.id);
                    },
                    child: Text(
                      '   Sign Up ',
                      style: TextStyle(
                        color: Color.fromARGB(216, 14, 36, 73),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              // CustomButon(
              //       text: 'Sign In',
              //       onTap: () async {
                     
              //       },
              //     ),
                 SizedBox(
                height: 30,
              ),  
            ],
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
        TextButton(onPressed: () {
          
        }, child: _buildGreyText("Forgot password?")),
      ],
    );
  }

  Widget _buildOtherLogin() {
    return Center();
  }
}
