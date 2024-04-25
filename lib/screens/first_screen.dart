import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  
  @override
  Widget build(context) {
    return const Center(
              child: Text(
                'MQPoint',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 6, 9),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
    );
  }
}