import 'package:flutter/material.dart';

import '../../constant.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.width * 0.3,
      padding: const EdgeInsets.all(10),
      child: Container(
          color: kPrimaryColor,
          child: const Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 15),
              Text(
                '21',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    height: 1.50,
                    fontFamily: kHomeFonts,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(
                'January',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    height: 1.50,
                    fontWeight: FontWeight.w600),
              )
            ],
          )),
    );
  }
}
