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

        return SingleChildScrollView( child: Stack(
          children: [

            Center(
              child:  SingleChildScrollView(
  scrollDirection: Axis.horizontal, child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  const SizedBox(height: 10), // padding on top

                  Container(  // white box in the center
                    width: 300.0,
                    height: 700.0,
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
                        const SizedBox(height: 20),

                        buildContainerF(state, "redemption", 'MQ POINTS: ${state.currentPoints}', fontColor: const Color(0xFF3794A8)),
                        
                        const SizedBox(height: 20),

                        SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "    March special",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: state.currentScene[2],
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

                        SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "    Popular",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: state.currentScene[2],
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
                   const SizedBox(height: 40),
                ]
              ))
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