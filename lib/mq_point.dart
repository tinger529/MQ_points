import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mqpoint/screens/login_screen.dart';
import 'package:mqpoint/screens/first_screen.dart';

class MQpoint extends StatelessWidget {
  const MQpoint({super.key});
  
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
            body: Container(
              color:const Color(0xFFBBE9F3),
              child: const LoginScreen(),
          )
      )
    );
  }
}