import 'package:flutter/material.dart';

import '../../constant.dart';

class DrDetails extends StatelessWidget {
  const DrDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: ListView(
        shrinkWrap: true,
        children: [
          Column(children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset('assets/images/images.jpeg', fit: BoxFit.cover),
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 20,
                ),
              ],
            ),
          ]),
        ],
      )),
    );
  }
}
