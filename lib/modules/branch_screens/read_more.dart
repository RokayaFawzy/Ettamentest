import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/widgets/image_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '                  Biography',
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
      body: ListView(
        // shrinkWrap: true,
        children: [
          Column(children: [
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(8),
              width: 350,
              height: 160,
              child: const Text(
                  "Amet amet Lorem eu consectetur in deserunt nostrud dolor culpa ad sint amet. Nostrud deserunt consectetur culpa minim mollit veniam aliquip pariatur exercitation ullamco ea voluptate et. Pariatur ipsum mollit magna proident nisi ipsum.",
                  style: TextStyle(
                    fontSize: 16,
                    color: kPrimaryColor,
                    fontFamily: kFont,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  Text("Certificates",
                      style: TextStyle(
                        fontSize: 16,
                        color: kPrimaryColor,
                        fontFamily: kHomeFonts,
                        fontWeight: FontWeight.w700,
                      )),
                ],
              ),
            ),
            Container(height: 200, child: const ImageRow()),
            Container(
              padding: const EdgeInsets.all(8),
              width: 350,
              height: 160,
              child: const Text(
                  "Amet amet Lorem eu consectetur in deserunt nostrud dolor culpa ad sint amet. Nostrud deserunt consectetur culpa minim mollit veniam aliquip pariatur exercitation ullamco ea voluptate et. Pariatur ipsum mollit magna proident nisi ipsum.",
                  style: TextStyle(
                    fontSize: 16,
                    color: kPrimaryColor,
                    fontFamily: kFont,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ]),
        ],
      ),
    );
  }
}
