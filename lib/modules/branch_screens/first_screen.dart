import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child:
                Image.asset("assets/images/Screenshot 2023-08-02 113741.png"),
          ),
        ),
      ),
    );
  }
}
