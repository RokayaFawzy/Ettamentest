import 'package:flutter/material.dart';

import '../../constant.dart';
import '../widgets/dr_infor_card.dart';

class ChiropractorScreen extends StatelessWidget {
  ChiropractorScreen({super.key});
  final int n = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              '             Chiropractor',
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
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Image.asset(
                                'assets/images/akar-icons_settings-vertical.png'),
                            onPressed: () {},
                            iconSize: 1,
                          ),
                          Text(
                            "Filters",
                            style: TextStyle(
                                color: Color(0xFF4B667F),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          Text(
                            "Sorting by",
                            style: TextStyle(
                                color: Color(0xFF4B667F),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          IconButton(
                            icon:
                                Image.asset('assets/images/chevron-right.jpg'),
                            onPressed: () {},
                            iconSize: 1,
                          ),
                        ],
                      ),
                      //TODO:the widget
                      Column(
                        children: List.generate(n, (index) {
                          return DrInformationCard();
                          '${index + 1}';
                        }),
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
