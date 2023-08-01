import 'package:flutter/material.dart';

import '../../constant.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  static String id = 'ForgotPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.white,
          leading: const Icon(Icons.arrow_back_ios),
          // surfaceTintColor: Colors.white,
          // backgroundColor: Colors.white,
          // foregroundColor: Colors.white,
          /*
              TODO: function to arrow
          */

          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: kPrimaryColor)),
    );
  }
}
