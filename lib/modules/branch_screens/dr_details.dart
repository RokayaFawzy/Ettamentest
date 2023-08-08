import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class DrDetails extends StatelessWidget {
  const DrDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    //TODO:make photo fit all the space
                    Image.asset('assets/images/images.jpeg', fit: BoxFit.cover),
                    //TODO:make photo fit all the space

                    Icon(
                      Icons.star,
                      color: Colors.green,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Dr. Georgia Griffin",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: kPrimaryColor)),
                        SizedBox(width: 8),
                        Text(r"$" "24",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: kPrimaryColor,
                                fontFamily: kHomeFonts)),
                        SizedBox(height: 15),
                      ],
                    ),
                    Text("Сardiologist",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: kIconcolor)),
                    SizedBox(height: 8),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 15,
                              color: Colors.green,
                            ),
                            Text(" 10:30 am - 4:30 pm",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(width: 100),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 14,
                                ),
                                Text(" 5,0",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: kIconcolor))
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 9,
              ),
              ListTile(
                title: Text(
                  'phone number',
                  style: TextStyle(
                    fontFamily: kFont,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(
                  CupertinoIcons.phone,
                  color: kIconcolor,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: kPrimaryColor,
                  size: 10,
                ),
              ),
              Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 15,
              ),
              ListTile(
                title: Text(
                  'Address',
                  style: TextStyle(
                    fontFamily: kFont,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(
                  CupertinoIcons.placemark,
                  color: kIconcolor,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: kPrimaryColor,
                  size: 10,
                ),
              ),
              Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 15,
              ),
            ]),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  CustomButton(text: "Make An Appointment", onTap: () async {}),
            ),
          ],
        ),
      ),
    );
  }
}