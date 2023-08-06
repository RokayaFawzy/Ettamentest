import 'package:ettamentest/modules/components/item.dart';
import 'package:ettamentest/modules/models/categories.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});
  final List<Item> number = const [
    Item(
        image: 'assets/images/2.png',
        titel1: 'Cellular and chemical analysis',
        desc:
            'Blood analysis, amniocentesis, gastric fluid analysis, kidney function test, prenatal testing, protein-bou...'),
    Item(
        image: "assets/images/1.png",
        titel1: "Diagnostic imaging",
        desc: "Angiocardiography, angiography, brain scanning,"
            " cholecystography, echocardiography, endoscopic ret..."),
    Item(
        image: "assets/images/3.png",
        titel1: "Genetic testing",
        desc: "Complementation test, fluorescence in situ hybridization"
            " preimplantation genetic diagnosis"),
    Item(
        image: "assets/images/4.png",
        titel1: "Measurement",
        desc:
            "Ballistocardiography, electrocardiography, electroencephalography,"
            "lumbar puncture, phonoca..."),
    Item(
        image: "assets/images/5.png",
        titel1: "Physical and visual examination",
        desc: "Biopsy, endoscopy, laparoscopy, mediastinoscopy, colposcopy"
            " gynecological examination, toxicol..."),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: getList(number),
      ),
    );
  }

  List<Widget> getList(List<Item> number) {
    List<ListItem> itemList = [];
    for (int i = 0; i < number.length;) {
      itemList.add(ListItem(number: number[i], color: Colors.white));
      Divider(
        color: kPrimaryColor,
        thickness: 0.1,
        height: 8,
      );
      i++;
    }
    return itemList;
  }
}
