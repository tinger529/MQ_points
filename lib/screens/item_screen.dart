import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});
  
  @override
  Widget build(context) {
    return Consumer<StateModel>(
      builder: (context, state, child) {

        return Center(

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const SizedBox(height: 10), // padding on top

              Container(  // white box in the center
                width: 300.0,
                height: 650.0,
                decoration: const BoxDecoration(
                  color: Color(0xFFF2FEFE),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),

                child: Column(
                  children: [

                    const SizedBox(height: 50),

                    buildContainerE(state, "home", 'Coffee 50% off coupon', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),

                    const SizedBox(height: 20),

                    const SizedBox(   // Display text
                      width: double.infinity,
                      child: Text(
                          "      Coffee 50% off coupon",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 6, 9),
                            fontSize: 16,
                            fontFamily: "Italic",
                          ),
                        ),
                    ),

                    const SizedBox(height: 10),

                    const SizedBox(   // Display text
                      width: double.infinity,
                      child: Text(
                          "       50 points",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 248, 4, 4),
                            fontSize: 16,
                            //fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Italic",
                          ),
                        ),
                    ),

                    const SizedBox(height: 20),

                    const SizedBox(   // Display text
                      width: double.infinity,
                      child: Text(
                          "        Embrace the warmth and energy it\n        brings, igniting your day with a burst\n        of invigorating freshness.\n\n        Store: perfect cafe \n        Items: all coffee \n        Expiration date: May 20th, 2024",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 6, 9),
                            fontSize: 13,
                            fontFamily: "Italic",
                          ),
                        ),
                    ),

                    const SizedBox(height: 20),

                    buildContainerA(state, "home", 'Redeem Now!'),

                    const SizedBox(height: 20),

                    Image.asset(
                      'assets/image/toolbar.png',
                        width: 500,
                        height: 50,
                        opacity: const AlwaysStoppedAnimation(.8),
                    ),
                  ],
                ),
              ),
            ]
          )
        );
      }
    );
  }
}