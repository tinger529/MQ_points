import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MQpoint extends StatelessWidget {
  const MQpoint({super.key});
  
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
            body: Container(
              color:const Color(0xFFBBE9F3),
              child: const Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'User Login',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 6, 9),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Italic",
                  ),
                ),
                SizedBox(height: 30),
                // add a box
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                ),
              ]
              )
              )
          )
      )
    );
  }
}