import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/models/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.number, required this.color})
      : super(key: key);
  final Item number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: <Widget>[
          Container(
            color: color,
            child: Image.asset(number.image!),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //TODO: spacebetween them

              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    number.titel1,
                    style: const TextStyle(color: kPrimaryColor, fontSize: 20),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  number.desc,
                  style: const TextStyle(color: kPrimaryColor, fontSize: 10),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: kPrimaryColor,
                  thickness: 0.1,
                  height: 8,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_right,
                color: kPrimaryColor,
                size: 12,
              ))
        ],
      ),
    );
  }
}
