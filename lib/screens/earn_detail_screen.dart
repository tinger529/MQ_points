import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';

class EarnDetailScreen extends StatelessWidget {
  const EarnDetailScreen({super.key});
  
  @override
  Widget build(context) {
    return Consumer<StateModel>(
      builder: (context, state, child) {

        return SingleChildScrollView( child: Stack(
          children: [

            Center(

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  const SizedBox(height: 10), // padding on top

                  Container(  // white box in the center
                    width: 300.0,
                    height: 700.0,
                    padding: const EdgeInsets.only(left: 25, bottom: 24, right: 25, top: 10),
                    decoration: BoxDecoration(
                      color: state.currentTheme ? const Color(0xFF073636) : const Color(0xFFF2FEFE),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),

                    child: Column(
                      children: [

                        const SizedBox(height: 30),

                        buildContainerH(state, "earn_detail", 'assets/image/library.png', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2), img: 'assets/image/library.png'),

                        const SizedBox(height: 20),

                        SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "Winning at most 1000 points in\nthe library monthly event!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: state.currentScene[2],
                                fontSize: 16,
                                fontFamily: "Italic",
                              ),
                            ),
                        ),

                        const SizedBox(height: 10),

                        const SizedBox(height: 20),

                        SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "Join our thrilling monthly library event and seize the opportunity to win big!\n\nScore up to 1000 points as you engage with our diverse collection of books, participate in exciting challenges, and unlock exclusive rewards. \n\nLocation: MQ library\n\ndate: May 1th, 2024 -\nMay 31th, 2024",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: state.currentScene[2],
                                fontSize: 13,
                                fontFamily: "Italic",
                              ),
                            ),
                        ),
                      ],
                      ),
                      
                    ),
                    const SizedBox(height: 40),
                  ]
                )
              ),

              Positioned.fill(
                top: 600,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: toolbar(state),               
                ),
              ),
            ]));
          }
    );
  }
}