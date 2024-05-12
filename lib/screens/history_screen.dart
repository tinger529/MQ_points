import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});
  
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

                        SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "Account history",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: state.currentScene[2],
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ),

                        const SizedBox(height: 30),

                        ...state.currentHistory.map((e){
                          return SizedBox(
                              width: double.infinity,
                              child: Column(
                                children: [
                                  buildContainerI(state, "history", e, colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),
                                  const SizedBox(height: 15),
                                ],
                              ),
                            );
                        })
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

              state.showSuccess ?
              Center(

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9).withOpacity(0.8),
                    ),
                    ),
                  ]
                )
              )
              : Container(),

              state.showSuccess ? 
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: buildContainerG(state, "item", "Redeem successfully!", arg: "close")               
                ),
              )
              : Container(),
            ]);
          }
    );
  }
}