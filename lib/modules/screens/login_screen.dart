import 'package:flutter/material.dart';
import 'package:icon_forest/icon_forest.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // Padding(
              //   padding: EdgeInsets.all(10),
              //   child: IconButton(
              //     onPressed: () {},
              //     icon: Icon(
              //       Icons.arrow_back_ios
              //     ),
              //   ),
              // ),
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
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Username"),
                    prefixIcon:Icon(Icons.person), 
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  obscureText:passToggle ? true : false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Password"),
                    prefixIcon:Icon(Icons.lock), 
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
