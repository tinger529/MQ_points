import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
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

                const SizedBox(height: 10),

                Container(
                  width: 300.0,
                  height: 650.0,
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

                      buildContainerF(state, "home", 'MQ POINTS: ${state.currentPoints}', fontColor: const Color(0xFF3794A8)),

                      const SizedBox(height: 20),

                      buildContainerA(state, "redemption", "Redeem Now!"),

                      const SizedBox(height: 20),

                      SizedBox(
                        width: double.infinity,
                        child: Text(
                            "    Recent Sales",
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

                      buildContainerB(state, "event", 'One Day Gym Full Access! ...', 'assets/image/gym.png', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),
                      
                      const SizedBox(height: 20),

                      SizedBox(
                        width: double.infinity,
                        child: Text(
                            "    Earn Points",
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

                      buildContainerB(state, "event", 'Winning at most 1000 po...', 'assets/image/library.png', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),
                    ],
                  ),
                ),
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

        ]);
      }
    );
  }
}