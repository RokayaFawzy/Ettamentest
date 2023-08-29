import 'package:ettamentest/modules/widgets/available_time_widgets.dart';
import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:ettamentest/modules/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../constant.dart';

class EditDrAppointment extends StatefulWidget {
  const EditDrAppointment({super.key});

  @override
  State<EditDrAppointment> createState() => _EditDrAppointmentState();
}

class _EditDrAppointmentState extends State<EditDrAppointment> {
  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '            Edit Dr Appointment',
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
        child: ListView(shrinkWrap: true, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        'assets/images/images.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Georgia Griffin",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Cardiologist",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: kIconcolor,
                            ),
                          ),
                        ]),
                  ],
                ),
                const Divider(
                  color: kPrimaryColor,
                  thickness: 0.1,
                  height: 8,
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Row(
                    children: [
                      Text(
                        "Choose Date",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontFamily: kHomeFonts,
                            color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: _date,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.calendar_today_rounded),
                        labelText: "Select Date"),
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2110));
                      if (pickeddate != null) {
                        setState(() {
                          _date.text =
                              DateFormat('yyyy-MM-dd').format(pickeddate);
                        });
                      }
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Row(
                    children: [
                      Text(
                        "Available Time",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontFamily: kHomeFonts,
                            color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const AvalibleTimeToggle(),
                const SizedBox(height: 80),
                Container(
                    width: 330,
                    child: CustomButton(text: "Make An Appointment"))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
