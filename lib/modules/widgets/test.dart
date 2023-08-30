import 'package:flutter/material.dart';

class DashCard extends StatefulWidget {
  @override
  _DashCardState createState() => _DashCardState();
}

class _DashCardState extends State<DashCard> {
  String selectedAction = "Edit"; // Set an initial value

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.only(left: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ... (other widgets)
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DropdownButton<String>(
                value: selectedAction,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedAction = newValue!;
                  });

                  // Handle different actions here
                  if (newValue == "Edit") {
                    // Navigate to EditDrAppointment
                  } else if (newValue == "Cancel") {
                    // Handle cancellation
                  }
                },
                items: <String>["Edit", "Cancel"].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
