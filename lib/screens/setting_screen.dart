import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Consumer<StateModel>(
      builder: (context, state, child) {

        return Stack(
          children: [

            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  const SizedBox(height: 10), // Padding on top

                  Container(
                    width: 300.0,
                    height: 650.0,
                    padding: const EdgeInsets.only(left: 25, bottom: 24, right: 25, top: 24),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2FEFE),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(

                      children: [
                        const SizedBox(height: 30),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            tool(state, "home", 'assets/image/home.png'),
                            const SizedBox(width: 10),
                            const Text(
                              "User name\nid:12345678\npoints: 100",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 2, 6, 9),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        buildContainerF(state, "history", "History"),

                        const SizedBox(height: 10),

                        buildContainerF(state, "contact", "Contact Us"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 620,
              left: 40, 
              child: toolbar(state),
            ),
          ],
        );
      },
    );
  }
}