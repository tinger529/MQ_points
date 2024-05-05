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

        return Center(

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const SizedBox(height: 10), // padding on top

              Container(  // white box in the center
                width: 300.0,
                height: 620.0,
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

                    Text(   // MQ points counter
                      'MQ POINTS: ${state.currentPoints}',
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 2, 6, 9),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Italic",
                      ),
                    ),
                    
                    const SizedBox(height: 20),

                    const SizedBox(   // Display text
                      width: double.infinity,
                      child: Text(
                          "   March special",
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

                    buildContainerD(state, 'Recent sales', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),

                    const SizedBox(height: 10),

                    buildContainerD(state, 'Recent sales', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),

                    const SizedBox(height: 20),

                    const SizedBox(   // Display text
                      width: double.infinity,
                      child: Text(
                          "  Popular",
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

                    buildContainerD(state, 'Popular', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),
                      
                    const SizedBox(height: 10),
                      
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