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
        appBar: AppBar(
            title: const Text(
              '             My profile',
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
              children: const [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/twiter.png'),
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
                            // fontWeight: FontWeight.bold,
                            // letterSpacing: 1,
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
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
