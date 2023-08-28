import 'package:flutter/cupertino.dart';

class ImageRow extends StatelessWidget {
  const ImageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(width: 15),
            Container(
                width: 120,
                height: 160,
                child: Image(image: AssetImage('assets/images/download.jpeg'))),
            const SizedBox(width: 15),
            Container(
                width: 120,
                height: 160,
                child: Image(image: AssetImage('assets/images/download.jpeg'))),
            const SizedBox(width: 15),
            Container(
                width: 120,
                height: 160,
                child: Image(image: AssetImage('assets/images/download.jpeg'))),
            const SizedBox(width: 15),
            Container(
                width: 120,
                height: 160,
                child: Image(image: AssetImage('assets/images/download.jpeg'))),
            const SizedBox(width: 15),
            Container(
                width: 120,
                height: 160,
                child: Image(image: AssetImage('assets/images/download.jpeg'))),
            const SizedBox(width: 15),
          ]),
    );
  }
}
