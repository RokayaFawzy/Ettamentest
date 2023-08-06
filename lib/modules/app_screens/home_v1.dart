import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/widgets/dr_card.dart';
import 'package:flutter/material.dart';

import '../widgets/date_widget.dart';

class HomeV1 extends StatefulWidget {
  const HomeV1({super.key});

  @override
  State<HomeV1> createState() => _HomeV1State();
}

class _HomeV1State extends State<HomeV1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: ListView(children: const [
          Column(
            children: [
              Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 35, bottom: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'My Appointments',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: kPrimaryColor,
                          fontFamily: kHomeFonts,
                          fontWeight: FontWeight.w700),
                    )),
              ),
              Row(
                children: [
                  DateWidget(),
                  DrCard(),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 8,
              ),
              //TODO:categories

              //TODO:categories
            ],
          )
        ])));
  }
}
