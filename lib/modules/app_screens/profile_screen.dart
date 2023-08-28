import 'package:ettamentest/modules/app_screens/widget_dashboard/dash_dr.dart';
import 'package:ettamentest/modules/widgets/date_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: const [
          Column(
            children: [
              SizedBox(height: 6),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/images (1).jpeg'),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Name",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    height: 1.20,
                    fontFamily: 'Domine',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 116,
                top: 270,
                child: Center(
                  child: Text(
                    " name@mail.com",
                    style: TextStyle(
                      color: Color.fromARGB(142, 14, 36, 73),
                      fontSize: 14,
                      wordSpacing: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  'Personal info',
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
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: kPrimaryColor,
                  size: 10,
                ),
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
                    Text("My appointments",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
              ),
              Row(
                children: [
                  DateWidget(),
                  DashboardDrCard(),
                ],
              ),
              Row(
                children: [
                  DateWidget(),
                  DashboardDrCard(),
                ],
              ),
              Row(
                children: [
                  DateWidget(),
                  DashboardDrCard(),
                ],
              ),
              Row(
                children: [
                  DateWidget(),
                  DashboardDrCard(),
                ],
              ),
              Divider(
                color: kTextfield,
                thickness: 0.4,
                indent: 15,
                endIndent: 15,
                height: 15,
              ),
              ListTile(
                title: Text(
                  'Log out',
                  style: TextStyle(
                    fontFamily: kFont,
                    fontSize: 14,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(
                  Icons.logout,
                  color: kIconcolor,
                ),
                // onTap: (){},
              ),
            ],
          )
        ],
      ),
    ));
  }
}
