import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/app_screens/widget_dashboard/dash_dr.dart';
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
              const Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 8,
              ),
              const SizedBox(height: 20),
              Container(
                height: 100,
                child: const ListRowMajors(),
              ),
              const SizedBox(height: 20),
              const AdvertisementLogo(),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "My Appointments",
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
              const Row(
                children: [
                  DateWidget(),
                  DashboardDrCard(),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 8,
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
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
              const SizedBox(height: 20),
              Container(
                height: 130,
                child: const ListRowDiagnostics(),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
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
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: DrInformationCard(),
              ),
            ],
          ),
        ]));
  }
}
