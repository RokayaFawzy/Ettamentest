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
    return GestureDetector(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Container(
              height: 190,
              width: 190,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Stack(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "5.0",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                ],
                              ),
                              Positioned(
                                width: 300,
                                child: Icon(
                                  Icons.more_vert,
                                  size: 15,
                                ),
                              ),
                              //TODO:the image is not added
                              Positioned(
                                width: 120,
                                child: Image.asset('assets/images/123.jpg',
                                    width: 30, height: 15, fit: BoxFit.fill),
                              ),

//TODO: the image of doctor
                            ]),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [SizedBox(width: 10), Text(r'$' '30')],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        const Text(
                          "Dr.Georgia Griffin",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 14,
                              fontFamily: kFont,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 1),
                        const Text(
                          "Cardiologist",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 13,
                            fontFamily: kFont,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Material(
                          color: Colors.green,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 9.5, horizontal: 45),
                              child: Text(
                                "Send Message",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
