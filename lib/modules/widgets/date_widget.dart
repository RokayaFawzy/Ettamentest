import 'package:flutter/material.dart';

import '../../constant.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(10),
      child: Container(
          color: kPrimaryColor,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'January',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    height: 1.50,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '21',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: kHomeFonts,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'at 4:30pm',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    height: 1.50,
                    fontWeight: FontWeight.w600),
              )
            ],
          )),
    );
  }
}
