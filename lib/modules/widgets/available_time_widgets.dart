import 'package:ettamentest/constant.dart';
import 'package:flutter/material.dart';

class AvalibleTimeToggle extends StatefulWidget {
  const AvalibleTimeToggle({super.key});

  @override
  State<AvalibleTimeToggle> createState() => _AvalibleTimeToggleState();
}

class _AvalibleTimeToggleState extends State<AvalibleTimeToggle> {
  int selectedTimeIndex = -1; // Initially no time slot selected

  final List<String> timeSlots = [
    '8:15 am',
    '8:30 am',
    '9:00 am',
    '9:45 am',
    '11:15 am',
    '12:15 pm',
    '1:30 pm',
    '3:00 pm',
    '4:30 pm',
    '5:45 pm',
    '6:15 pm',
    '8:00 pm'
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: List.generate(timeSlots.length, (index) {
        final isSelected = index == selectedTimeIndex;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedTimeIndex = isSelected ? -1 : index;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? kPrimaryColor : Colors.black26,
              ),
              color: isSelected ? kPrimaryColor : Colors.transparent,
            ),
            child: Text(
              timeSlots[index],
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontFamily: kFont,

                color: isSelected
                    ? Colors.white
                    : kPrimaryColor, // Change text color
              ),
            ),
          ),
        );
      }),
    );
  }
}
