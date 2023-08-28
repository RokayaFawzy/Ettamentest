import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/widgets/notifications_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.only(left: 27.0),
                child: Text(
                  "Notifications ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: kHomeFonts,
                      color: kPrimaryColor),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: NotificationsWidgets(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
