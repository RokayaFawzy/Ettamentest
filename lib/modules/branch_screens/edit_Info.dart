import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:ettamentest/modules/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../constant.dart';

class EditInformation extends StatelessWidget {
  const EditInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '                  Edit profile',
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
              Stack(children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black38,
                    child: CircleAvatar(
                      radius: 49,
                      backgroundImage: AssetImage('assets/images/images.jpeg'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  right: 1,
                  left: 3,
                  child: Align(
                    alignment: Alignment(0.2, 0),
                    child: Container(
                      width: 30,
                      height: 30,
                      color: kPrimaryColor,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 17,
                      ),
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                onChange: (data) {},
                hintText: 'User Name',
              ),
              SizedBox(
                height: 9,
              ),
              CustomTextField(
                onChange: (data) {},
                hintText: 'Email',
              ),
              SizedBox(
                height: 9,
              ),
              IntlPhoneField(
                decoration: InputDecoration(
                    labelText: "phoneNumber",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    )),
              ),
              SizedBox(
                height: 9,
              ),
              CustomTextField(
                onChange: (data) {},
                hintText: 'Place',
              ),
              SizedBox(
                height: 18,
              ),
              CustomButton(
                text: "Save Changes",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
