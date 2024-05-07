import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';

class RedemptionScreen extends StatelessWidget {
  const RedemptionScreen({super.key});
  
  @override
  Widget build(context) {
    return Consumer<StateModel>(
      builder: (context, state, child) {

        return Stack(
          children: [

            Center(
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
                        const SizedBox(height: 20),

                        buildContainerF(state, "home", 'MQ POINTS: ${state.currentPoints}', fontColor: const Color(0xFF3794A8)),
                        
                        const SizedBox(height: 20),

                        const SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "    March special",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 2, 6, 9),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Italic",
                              ),
                            ),
                        ),

                        const SizedBox(height: 20),

                        buildContainerD(state, "item", 'Coffee 50% off', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),

                        const SizedBox(height: 15),

                        buildContainerD(state, "item", 'Coffee 50% off', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),

                        const SizedBox(height: 20),

                        const SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "    Popular",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 2, 6, 9),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Italic",
                              ),
                            ),
                        ),

                        const SizedBox(height: 20),

                        buildContainerD(state, "item", 'Coffee 50% off', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),
                      ],
                    ),
                  ),
                ]
              )
            ),
            Positioned(
              top: 630,
              left: 40, 
              child: toolbar(state),
            ),
        ]);
      }
    );
  }
}