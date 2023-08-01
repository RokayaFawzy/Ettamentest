import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 375,
    height: 812,
    clipBehavior: Clip.antiAlias,
    decoration: const BoxDecoration(color: Colors.white),
    child: Stack(
        children: [
            Positioned(
                left: 94,
                top: 252,
                child: SizedBox(
                    width: 187.08,
                    height: 167.02,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 140,
                                top: 133.74,
                                child: Transform(
                                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.26),
                                    child: const SizedBox(
                                        width: 39.63,
                                        height: 34.41,
                                        child: Stack(children: [
                                        
                                        ]),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 41.72,
                                top: 19.94,
                                child: Transform(
                                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-2.88),
                                    child: const SizedBox(
                                        width: 35.11,
                                        height: 30.49,
                                        child: Stack(children: [
                                        
                                        ]),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            const Positioned(
                left: 118,
                top: 284,
                child: Stack(
                    children: [
                        Positioned(
                            left: 0,
                            top: 31,
                            child: Text(
                                'DEMICAL',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFF123258),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    height: 1.70,
                                    letterSpacing: 5,
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        ],
    ),
);
  }
}