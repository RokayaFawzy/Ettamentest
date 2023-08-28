import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:ettamentest/modules/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../constant.dart';

class EditDrAppointment extends StatelessWidget {
  const EditDrAppointment({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(shrinkWrap: true, children: []),
        ),
      ),
    );
  }
}
