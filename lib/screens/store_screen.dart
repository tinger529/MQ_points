import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';

class StoreScreen extends StatelessWidget {
  StoreScreen({super.key});

  String k = "";
  
  @override
  Widget build(BuildContext context) {

    return Consumer<StateModel>(
      builder: (context, state, child) {

        return SingleChildScrollView( child:Stack(
          children: [

            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  const SizedBox(height: 10), // Padding on top

                  Container(
                    width: 300.0,
                    height: 700.0,
                    padding: const EdgeInsets.only(left: 25, bottom: 24, right: 25, top: 10),
                    decoration: BoxDecoration(
                      color: state.currentTheme ? const Color(0xFF073636) : const Color(0xFFF2FEFE),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(

                      children: [
                        const SizedBox(height: 30),

                        Text(
                          "Explore MQ points",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: state.currentScene[2],
                            fontSize: 16,
                          ),
                        ),

                        const SizedBox(height: 30),

                        SizedBox(
                          width: 250,
                          height: 50,
                          child: TextField(
                            onChanged: (text) {
                              k = text;
                            },
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: 'Search...',
                              fillColor: state.currentTheme ? const Color(0xFF073636) : const Color(0xFFF2FEFE),
                            ),
                          ),
                        ),

                        Image.asset(
                          'assets/image/mq-campus-map.png',
                          width: 300,
                          height: 300,
                          opacity: const AlwaysStoppedAnimation(.8),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            Positioned.fill(
              top: 600,
              child: Align(
                alignment: Alignment.centerRight,
                child: toolbar(state),               
              ),
            ),
          ],
        ));
      },
    );
  }
}