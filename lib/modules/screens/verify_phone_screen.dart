import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../constant.dart';
import '../branch_screens/code_verify.dart';
import '../widgets/custom_botton.dart';
import '../widgets/custom_text_field.dart';

class PhoneVerify extends StatefulWidget {
  const PhoneVerify({super.key});

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  String? phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '        Verify your phone number',
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
              const Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    " We have sent your SMS with code to your Phone number",
                    style: TextStyle(
                      color: Color.fromARGB(142, 14, 36, 73),
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                      // letterSpacing: 1,
                      wordSpacing: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // CustomTextField(
              //     inputType: TextInputType.number,
              //     onChange: (data) {
              //       phone = data;
              //     },
              //     hintText: 'phone number'),
              const IntlPhoneField(
                decoration: InputDecoration(
                    labelText: "phoneNumber",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    )),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Confirm",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CodePhone(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
