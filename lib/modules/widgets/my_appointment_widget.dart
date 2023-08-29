import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/widgets/date_widget.dart';
import 'package:ettamentest/modules/widgets/past_appointment_widget.dart';
import 'package:ettamentest/modules/widgets/upcoming_appointment_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppointments extends StatelessWidget {
  const MyAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '             My appointments',
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
        child: ListView(
          shrinkWrap: true,
          children: const [
            Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Upcoming Appointments",
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
                Row(
                  children: [
                    DateWidget(),
                    DrCardUpcoming(),
                  ],
                ),
                Divider(
                  color: kTextfield,
                  thickness: 0.4,
                  indent: 15,
                  endIndent: 15,
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Past appointments",
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
                SizedBox(height: 10),
                PastAppointment(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
