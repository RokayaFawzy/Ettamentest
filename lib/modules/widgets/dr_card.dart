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
      child: Center(
        child: Container(
          height: 190,
          width: 190,
          child: SingleChildScrollView(
            child: Card(
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Stack(children: [
                            const Row(
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
                            const Positioned(
                              width: 300,
                              child: Icon(
                                Icons.more_vert,
                                size: 15,
                              ),
                            ),
                            //TODO:the image is not added
                            Positioned(
                              width: 60,
                              height: 40,
                              child: SizedBox(
                                height: 10,
                                width: 12,
                                child: Image.asset('assets/images/123.jpg',
                                    width: 15, height: 10, fit: BoxFit.cover),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(0.1),
                            //   child: SizedBox(
                            //       height: 70,
                            //       width: 50,
                            //       child: Image.asset(
                            //         'assets/images/123.jpg',
                            //       )),
                            // ),
                            //TODO: the image of doctor
                          ]),
                          const SizedBox(
                            height: 30,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [SizedBox(width: 10), Text(r'$' '30')],
                          ),
                          const SizedBox(
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
        ),
      ),
    );
  }
}
