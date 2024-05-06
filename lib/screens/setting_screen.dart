import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  
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

                    const SizedBox(   // Display text
                      width: double.infinity,
                      child: Text(
                          "      User name\n      id:12345678\n      points: 100",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 6, 9),
                            fontSize: 16,
                          ),
                        ),
                    ),

                    const SizedBox(height: 10),

                    toolbar(state),
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