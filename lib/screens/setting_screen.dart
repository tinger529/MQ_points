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
                    padding: const EdgeInsets.only(left: 25, bottom: 24, right: 25, top: 10),
                    decoration: BoxDecoration(
                      color: state.currentTheme ? const Color(0xFF073636) : const Color(0xFFF2FEFE),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(

                      children: [
                        const SizedBox(height: 30),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Image.asset(
                              'assets/image/user.png',
                              width: 100,
                              height: 100,
                            ),

                            const SizedBox(width: 30),
                            
                            Text(
                              "${state.currentName}\nid:${state.currentUid}\npoints: ${state.currentPoints}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: state.currentScene[2],
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        Image.asset(
                          'assets/image/barcode.png',
                          width: 200,
                          height: 150,
                        ),

                        buildContainerF(state, "history", "History"),

                        const SizedBox(height: 10),

                        buildContainerF(state, "contact", "Contact Us"),

                        const SizedBox(height: 10),

                        buildContainerF(state, "setting", "Dark Mode", arg: "theme"),
                      ],
                    ),
                  ),
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
        );
      },
    );
  }
}