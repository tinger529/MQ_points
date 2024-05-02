import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // write a function that return a container
  Container _buildContainer(state, String txt, {Color colour = const Color(0xFF6FC5C5), Color fontColor = const Color(0xFFA83759)}) {
    return Container(
      width: 240.0,
      height: 120.0,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: OutlinedButton(
          onPressed: state.redirectHome,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Text(
            txt,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: fontColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Italic",
            ),
          ),
        ),
      );
  }
  
  @override
  Widget build(context) {
    return Consumer<StateModel>(
      builder: (context, state, child) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              Container(
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
                    Text(
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
                    _buildContainer(state, "Redeem Now!"),
                    const SizedBox(height: 20),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                          "    Recent Sales",
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
                    _buildContainer(state, 'Recent sales', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),
                    const SizedBox(height: 20),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                          "    Earn Points",
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
                      _buildContainer(state, 'Earn points', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),
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