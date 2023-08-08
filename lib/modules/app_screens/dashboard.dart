import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/widgets/dr_card.dart';
import 'package:flutter/material.dart';

import '../widgets/categories_item.dart';
import '../widgets/date_widget.dart';
import '../widgets/dr_infor_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
              //TODO: insert CategoriesItem
              // CategoriesItem(),
              //TODO: insert CategoriesItem,
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Top Rated Doctor",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontFamily: kHomeFonts,
                          fontWeight: FontWeight.w700,
                          height: 1.20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              DrInformationCard(),
            ],
          )
        ])));
  }
}
