import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';

class UseVoucherScreen extends StatelessWidget {
  const UseVoucherScreen({super.key});
  
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

                        const SizedBox(height: 50),

                        buildContainerE(state, "use", 'Coffee 50% off coupon', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),

                        const SizedBox(height: 20),

                        SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "      Coffee 50% off coupon",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: state.currentScene[2],
                                fontSize: 16,
                                fontFamily: "Italic",
                              ),
                            ),
                        ),

                        const SizedBox(height: 10),

                        const SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "       Remain 28 days",
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

                        SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "        Embrace the warmth and energy it\n        brings, igniting your day with a burst\n        of invigorating freshness.\n\n        Store: perfect cafe \n        Items: all coffee \n        Expiration date: May 20th, 2024",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: state.currentScene[2],
                                fontSize: 13,
                                fontFamily: "Italic",
                              ),
                            ),
                        ),

                        const SizedBox(height: 20),

                        buildContainerA(state, "use", 'Show QR code', arg: "show"),
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
                  child: qrcode(state, "use", "Redeem successfully!", arg: "close")             
                ),
              )
              : Container(),
            ]));
          }
    );
  }
}