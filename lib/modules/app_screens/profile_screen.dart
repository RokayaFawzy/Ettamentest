import 'package:ettamentest/modules/branch_screens/edit_Info.dart';
import 'package:ettamentest/modules/screens/welcome_screen.dart';
import 'package:ettamentest/modules/widgets/my_appointment_widget.dart';
import 'package:ettamentest/modules/widgets/personal_info_widget.dart';
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
        children: [
          Column(
            children: [
              const SizedBox(height: 6),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/images (1).jpeg'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
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
              const Positioned(
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
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  'Personal info',
                  style: TextStyle(
                    fontFamily: kFont,
                    fontSize: 14,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: const Icon(
                  CupertinoIcons.person,
                  color: kIconcolor,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: kPrimaryColor,
                  size: 10,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PersonalInformation(),
                    ),
                  );
                },
              ),
              const Divider(
                color: kTextfield,
                thickness: 0.4,
                indent: 15,
                endIndent: 15,
                height: 15,
              ),
              ListTile(
                title: const Text(
                  'My appointment',
                  style: TextStyle(
                    fontFamily: kFont,
                    fontSize: 14,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: const Icon(
                  Icons.calendar_today_outlined,
                  color: kIconcolor,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: kPrimaryColor,
                  size: 10,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyAppointments(),
                    ),
                  );
                },
              ),
              const Divider(
                color: kTextfield,
                thickness: 0.4,
                indent: 15,
                endIndent: 15,
                height: 15,
              ),
              ListTile(
                title: const Text(
                  'Edit',
                  style: TextStyle(
                    fontFamily: kFont,
                    fontSize: 14,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: const Icon(
                  Icons.edit,
                  color: kIconcolor,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: kPrimaryColor,
                  size: 10,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditInformation(),
                    ),
                  );
                },
              ),
              const Divider(
                color: kTextfield,
                thickness: 0.4,
                indent: 15,
                endIndent: 15,
                height: 15,
              ),
              ListTile(
                title: const Text(
                  'Log out',
                  style: TextStyle(
                    fontFamily: kFont,
                    fontSize: 14,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: const Icon(
                  Icons.logout,
                  color: kIconcolor,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const welcomeScreen(),
                    ),
                  );
                },
              ),
              const Divider(
                color: kTextfield,
                thickness: 0.4,
                indent: 15,
                endIndent: 15,
                height: 15,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
