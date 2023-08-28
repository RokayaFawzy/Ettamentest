import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/app_screens/widget_dashboard/list_row_diagnostics.dart';
import 'package:ettamentest/modules/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/diseases_contaner.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              color: kPrimaryColor,
              thickness: 0.1,
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 27.0),
              child: Text(
                "Search ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: kHomeFonts,
                    color: kPrimaryColor),
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Container(
                width: 300,
                child: CustomTextField(
                  hintText: "search",
                  suffixIcon: Icons.search,
                ),
              ),
            ),
            const DiseasesSearch(),
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
            const SizedBox(height: 100),
          ],
        ),
      ]),
    );
  }
}
