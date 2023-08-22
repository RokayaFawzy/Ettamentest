import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/app_screens/widget_dashboard/list_row_diagnostics.dart';
import 'package:ettamentest/modules/app_screens/widget_dashboard/list_row_majors.dart';
import 'package:ettamentest/modules/app_screens/widget_dashboard/advertisement.dart';
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
        body: ListView(children: [
          Column(
            children: [
              Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 8,
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                child: ListRowMajors(),
              ),
              SizedBox(height: 20),
              AdvertisementLogo(),
              SizedBox(height: 20),
              Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 8,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Diagnostics & Tests",
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
              SizedBox(height: 20),
              Container(
                height: 130,
                child: ListRowDiagnostics(),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DrInformationCard(),
              ),
            ],
          ),
        ]));
  }
}
