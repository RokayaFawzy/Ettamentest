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
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 27.0),
              child: Text(
                "Search ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: kHomeFonts,
                    color: kPrimaryColor),
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: Container(
                width: 300,
                child: CustomTextField(
                  hintText: "search",
                  suffixIcon: Icons.search,
                ),
              ),
            ),
            Diseases_contaner(),
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
            SizedBox(height: 100),
          ],
        ),
      ]),
    );
  }
}
