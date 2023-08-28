import 'package:ettamentest/modules/app_screens/widget_chiropractor.dart/filters_widget.dart';
import 'package:ettamentest/modules/app_screens/widget_chiropractor.dart/toggle_sorted_by.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../widgets/dr_infor_card.dart';

class ChiropractorScreen extends StatefulWidget {
  const ChiropractorScreen({super.key});

  @override
  State<ChiropractorScreen> createState() => _ChiropractorScreenState();
}

class _ChiropractorScreenState extends State<ChiropractorScreen> {
  List<String> _selectedItem = [];

  void _showMultiSelect() async {
    final List<String> items = [
      'Price: low to high',
      'Price: high to low',
      'Customer rating',
      'Most popular'
    ];
    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SingleSelectSorted(
          items: items,
        );
      },
    );
    if (results != null) {
      setState(() {
        _selectedItem = results;
      });
    }
  }

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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FiltersScreen(),
                            ),
                          );
                        },
                        iconSize: 1,
                      ),
                      const Text(
                        "Filters",
                        style: TextStyle(
                            color: Color(0xFF4B667F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      const Text(
                        "Sorting by",
                        style: TextStyle(
                            color: Color(0xFF4B667F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                        icon: Image.asset('assets/images/chevron-right.jpg'),
                        onPressed: _showMultiSelect,
                        iconSize: 1,
                      ),
                    ],
                  ),
                  const DrInformationCard(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
