import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/app_screens/widget_chiropractor.dart/Toggle_rating.dart';
import 'package:ettamentest/modules/app_screens/widget_chiropractor.dart/toggle_gender.dart';
import 'package:ettamentest/modules/branch_screens/edit_Info.dart';
import 'package:ettamentest/modules/screens/login_screen.dart';
import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

// enum Gender { male, female }

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              '                     Filters',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 16,
                fontFamily: kFont,
                fontWeight: FontWeight.w700,
                height: 1.70,
              ),
            ),
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Gender",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16,
                              fontFamily: kHomeFonts,
                              fontWeight: FontWeight.w600,
                              height: 1.20),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      ToggleGenderButtons(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Rating",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16,
                              fontFamily: kHomeFonts,
                              fontWeight: FontWeight.w600,
                              height: 1.20),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      ToggleRatingButtons(),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        color: Color(0xff18DF80),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => ),
                            // );
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 50),
                            child: Text(
                              "Reset",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: kPrimaryColor,
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>

                            //       FiltersScreen(),
                            //       ),
                            // );
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 50),
                            child: Text(
                              "Apply",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Row(
                  //   children: [
                  //     Expanded(child: CustomButton(text: "text")),
                  //     const SizedBox(height: 10),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ));
  }
}
