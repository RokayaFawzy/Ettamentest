import 'package:ettamentest/constant.dart';
import 'package:flutter/material.dart';

class SingleSelectSorted extends StatefulWidget {
  final List<String> items;

  const SingleSelectSorted({super.key, required this.items});

  @override
  State<SingleSelectSorted> createState() => _SingleSelectSortedState();
}

class _SingleSelectSortedState extends State<SingleSelectSorted> {
  List<String> item = [
    'Price: low to high',
    'Price: high to low',
    'Customer rating',
    'Most popular'
  ];
  List<bool> checkedItem = [false, false, false, false];
  void handleCheckboxChanged(int index, bool value) {
    setState(() {
      for (int i = 0; i < checkedItem.length; i++) {
        if (i == index) {
          checkedItem[i] = value;
        } else {
          checkedItem[i] = false;
        }
      }
    });
  }

  void _cancel() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Sorting by",
        style: TextStyle(
            color: kPrimaryColor,
            fontSize: 16,
            fontFamily: kHomeFonts,
            fontWeight: FontWeight.w600,
            height: 1.20),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: item.asMap().entries.map((entry) {
            int index = entry.key;
            String item = entry.value;
            return CheckboxListTile(
              value: checkedItem[index],
              title: Text(item,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor.withOpacity(0.8))),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                setState(() {
                  handleCheckboxChanged(index, value ?? false);
                });
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
