import 'package:ettamentest/constant.dart';
import 'package:ettamentest/modules/widgets/dr_card.dart';
import 'package:flutter/material.dart';

class HomeV1 extends StatefulWidget {
  const HomeV1({super.key});

  @override
  State<HomeV1> createState() => _HomeV1State();
}

class _HomeV1State extends State<HomeV1> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 35, bottom: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'My Appointments',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.indigo[600],
                        ),
                      )),
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          color: Colors.blue[900],
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'January',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Text(
                                '21',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50),
                              ),
                              Text(
                                'at 4:30pm',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20),
                              )
                            ],
                          )),
                    ),
                    Container(
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
                                    'assets/images/123.jpg',
                                    fit: BoxFit.cover,
                                  )),
                              const SizedBox(width: 5,),
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
                                                style: TextStyle(
                                                    color:
                                                    Colors.grey[700]),
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Dr.Georgia Griffin',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.indigo[900],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Cardiologist',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () { },
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(255, 8, 229, 89),
                                elevation: 0,
                              ),
                              child: const Text('Send Message'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ])
      )
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0, left: 35, bottom: 20),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'My Appointments',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.indigo[600],
                                  ),
                                )),
                          ),
                          Row(
                            children: [
                              Container(
                                  color: Colors.blue[900],
                                  height: 220,
                                  child: const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child: Text(
                                          'January',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child: Text(
                                          '21',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 70),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child: Text(
                                          'at 4:30pm',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 20.0),
                                          child: SizedBox(
                                              height: 90,
                                              width: 100,
                                              child: Image.asset(
                                                'assets/images/123.jpg',
                                              )),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 40.0),
                                              child: Align(
                                                  alignment: Alignment.topCenter,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.amber[800],
                                                      ),
                                                      Text(
                                                        '5.0',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.grey[700]),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .only(),
                                                        child: Icon(
                                                          Icons.more_vert,
                                                          color: Colors.grey[600],
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                right: 30,
                                              ),
                                              child: Text('\$24'),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Dr.Georgia Griffin',
                                      style: TextStyle(
                                          color: Colors.indigo[900],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, right: 50),
                                      child: Text(
                                        'Cardiologist',
                                        style: TextStyle(color: Colors.grey[600]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20.0, left: 30),
                                      child: SizedBox(
                                        width: 200,
                                        height: 40,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Handle button tap here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary:
                                                const Color.fromARGB(255, 8, 229, 89),
                                            elevation: 5,
                                          ),
                                          child: const Text('Send Message'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     const Text("My appointments",
                      //         style: TextStyle(
                      //             fontSize: 20,
                      //             fontWeight: FontWeight.w700,
                      //             fontFamily: kHomeFonts)),
                      //     const SizedBox(height: 20),
                      //     //FirstContaner
                      //     Container(
                      //       padding: const EdgeInsets.only(
                      //           top: 30, bottom: 30, right: 50, left: 40),
                      //       color: kPrimaryColor,
                      //       child: const Align(
                      //         alignment: Alignment.bottomCenter,
                      //         child: Row(
                      //           children: [
                      //             Column(
                      //               children: [
                      //                 Text(
                      //                   "January",
                      //                   style: TextStyle(
                      //                       fontSize: 12,
                      //                       fontWeight: FontWeight.w700,
                      //                       fontFamily: kFont,
                      //                       color: Colors.white),
                      //                 ),
                      //                 SizedBox(height: 10),
                      //                 Text(
                      //                   "21",
                      //                   style: TextStyle(
                      //                       fontSize: 40,
                      //                       fontWeight: FontWeight.w500,
                      //                       fontFamily: kHomeFonts,
                      //                       color: Colors.white),
                      //                 ),
                      //                 SizedBox(height: 10),
                      //                 Text(
                      //                   "at 4:30pm",
                      //                   style: TextStyle(
                      //                       fontSize: 12,
                      //                       fontWeight: FontWeight.w300,
                      //                       // fontFamily: kFont,
                      //                       color: Colors.white),
                      //                 ),
                      //               ],
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // // const DrCard(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(
                color: kPrimaryColor,
                thickness: 0.1,
                height: 8,
              ),
              //TODO:categories

              //TODO:categories
            ],
          ),
        ]),
      ),
    );
  }
}
