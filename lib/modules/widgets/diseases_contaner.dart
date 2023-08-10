import 'package:flutter/material.dart';

class Diseases_contaner extends StatefulWidget {
  const Diseases_contaner({super.key});

  @override
  State<Diseases_contaner> createState() => _Diseases_contanerState();
}

class _Diseases_contanerState extends State<Diseases_contaner> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.amber,
        width: 100,
        height: 110,
        child: Column(
          children: [
            Row(children: [
              Container(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment(20, 30),
                      child: Image.asset("assets/images/heart (1).png"),
                    ),
                  ],
                ),
              )
            ]),
            Row(children: []),
            Row(children: []),
          ],
        ),
      ),
    );
  }
}
