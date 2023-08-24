import 'package:ettamentest/constant.dart';
import 'package:flutter/material.dart';

class AvailableHoursCheckbox extends StatefulWidget {
  const AvailableHoursCheckbox({super.key});

  @override
  State<AvailableHoursCheckbox> createState() => _AvailableHoursCheckboxState();
}

class _AvailableHoursCheckboxState extends State<AvailableHoursCheckbox> {
  List<String> item = ['9 am-12 pm', '12 pm-3 pm', '3 pm-6 pm', '6 pm-9 pm'];
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

  @override
  Widget build(BuildContext context) {
    return Column(
      // shrinkWrap: true, // Important to avoid height issues in Column
      children: item.asMap().entries.map((entry) {
        int index = entry.key;
        String item = entry.value;

        return CheckboxListTile(
          contentPadding: EdgeInsets.only(right: 178),
          title: Row(
            children: [
              // Checkbox(
              //   value: checkedItem[index],
              //   onChanged: (bool? value) {
              //     setState(() {
              //       handleCheckboxChanged(index, value ?? false);
              //     });
              //   },
              // ),
              Expanded(
                child: Center(
                    child: Text(
                  item,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor.withOpacity(0.7)),
                )),
              ),
            ],
          ),
          controlAffinity: ListTileControlAffinity.leading,
          value: checkedItem[index],
          onChanged: (bool? value) {
            setState(() {
              handleCheckboxChanged(index, value ?? false);
            });
          },
        );
      }).toList(),
    );
  }
}
