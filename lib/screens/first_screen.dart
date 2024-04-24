import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MQpoint extends StatelessWidget {
  const MQpoint({super.key});
  
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
            body: Container(
              color: const Color(0xFFBBE9F3),
              child: const Center(
                child: Text(
                  'MQPoint',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 6, 9),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              )
          )
      )
    );
  }
}