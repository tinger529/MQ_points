import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mqpoint/screens/login_screen.dart';
import 'package:mqpoint/screens/first_screen.dart';
import 'package:mqpoint/screens/home_screen.dart';
import 'models/state.dart';

class MQpoint extends StatelessWidget {
  const MQpoint({super.key});
  
  @override
  Widget build(context) {
    return MaterialApp(
      home: Consumer<StateModel>( 
        builder: (context, state, child) {
          return Scaffold(
            body: Container(
              color:const Color(0xFFBBE9F3),
              child: switch(state.pageStatus) {
                "login" => const LoginScreen(),
                "start" => const FirstScreen(),
                "home" => const HomeScreen(),
                _ => const FirstScreen(),
                }
              )
          );
        }
      )
    );
  }
}