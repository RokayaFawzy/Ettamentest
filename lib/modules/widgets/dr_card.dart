import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

import '../screens/login_screen.dart';

class DrCard extends StatelessWidget {
  const DrCard({
    super.key,
    // required this.product
  });
// ProductModel this.Product,
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.asset(
                    'assets/images/images.jpeg',
                    fit: BoxFit.cover,
                  )),
              const SizedBox(width: 5),
              Expanded(
                child: SizedBox(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber[800],
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '5.0',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.grey[600],
                          )
                        ],
                      ),
                      const Text('\$24')
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
            width: double.infinity,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Dr.Georgia Griffin',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: kFont,
                        fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Cardiologist',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xFF4B667F),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF18DF80),
                  elevation: 0,
                  shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.zero))),
              child: const Text(
                'Send Message',
                style: TextStyle(fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
