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
      title: const Text("Sorting by"),
      content: SingleChildScrollView(
        child: ListBody(
          children: item.asMap().entries.map((entry) {
            int index = entry.key;
            String item = entry.value;
            return CheckboxListTile(
              value: checkedItem[index],

// value: _selectedItems.contains(item),
              title: Text(item),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                setState(() {
                  handleCheckboxChanged(index, value ?? false);
                });
              },

// (isChecked) => _itemChange(item, isChecked!),
            );
          }).toList(),
          // // shrinkWrap: true, // Important to avoid height issues in Column
          // children: item.asMap().entries.map((entry) {
          //   int index = entry.key;
          //   String item = entry.value;

          //   return CheckboxListTile(
          //     contentPadding: EdgeInsets.only(right: 178),
          //     title: Text(
          //       item,
          //       style: TextStyle(
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //           color: kPrimaryColor.withOpacity(0.7)),
          //     ),
          //     controlAffinity: ListTileControlAffinity.leading,
          //     value: checkedItem[index],
          //     onChanged: (bool? value) {
          //       setState(() {
          //         handleCheckboxChanged(index, value ?? false);
          //       });
          //     },
          //   );
          // }).toList(),
        ),
      ),
    );
  }
}
