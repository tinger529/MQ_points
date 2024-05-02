import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
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
                  color: Colors.white,
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
                    const Text(
                      'MQ POINTS: 100',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 6, 9),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Italic",
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 240.0,
                      height: 120.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF6FC5C5),
                        borderRadius: BorderRadius.only(
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
                          child: const Text(
                            'Redeem Now',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              color: Color(0xFFA83759),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Italic",
                            ),
                          ),
                        ),
                      ),
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
                    Container(
                      width: 240.0,
                      height: 120.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFCFDEE0),
                        borderRadius: BorderRadius.only(
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
                          child: const Text(
                            'Recent sale',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 7, 9),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Italic",
                            ),
                          ),
                        ),
                      ),
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
                    Container(
                      width: 240.0,
                      height: 120.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFCFDEE0),
                        borderRadius: BorderRadius.only(
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
                          child: const Text(
                            'Earn points',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              color: Color.fromARGB(255, 7, 1, 2),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Italic",
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ]
      )
    );
      }
    );
  }
}