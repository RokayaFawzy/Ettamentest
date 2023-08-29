import 'package:ettamentest/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '          Personal information',
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
      body: const Column(
        children: [
          ListTile(
            title: Text(
              'Name',
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontFamily: kFont,
                fontSize: 14,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: Icon(
              CupertinoIcons.person,
              color: kIconcolor,
            ),
          ),
          ListTile(
            title: Text(
              'Email',
              style: TextStyle(
                fontFamily: kFont,
                fontSize: 14,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: Icon(
              Icons.email,
              color: kIconcolor,
            ),
          ),
          ListTile(
            title: Text(
              'phone Number',
              style: TextStyle(
                fontFamily: kFont,
                fontSize: 14,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: Icon(
              Icons.phone,
              color: kIconcolor,
            ),
          ),
          ListTile(
            title: Text(
              'Address',
              style: TextStyle(
                fontFamily: kFont,
                fontSize: 14,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: Icon(
              Icons.place,
              color: kIconcolor,
            ),
          ),
        ],
      ),
    );
  }
}
