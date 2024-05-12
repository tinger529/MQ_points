import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});
  
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

                        buildContainerH(state, "event_detail", 'Coffee 50% off coupon', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2), img: 'assets/image/gym.png'),

                        const SizedBox(height: 20),

                        SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "One Day Gym Full Access!\nWorkout with us!",
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
                              "Dive into a world of health and wellness as you explore our state-of-the-art facilities and join invigorating group classes led by expert instructors. \n\nDiscover the motivation you need to kickstart your fitness journey and unlock your full potential. Don't miss this opportunity to sweat, smile, and transform your day, all on us!\n\nLocation: MQ sports center\ndate: May 1th, 2024 -\nMay 31th, 2024",
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
            ]));
          }
    );
  }
}