import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../models/state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  
  @override
  Widget build(context) {
    return Consumer<StateModel>(
      builder: (context, state, child) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 50),
              const Text(
                'User Login',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 6, 9),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Italic",
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: 300.0,
                height: 350.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 50),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Student ID',
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: null,
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/image/coin.jpeg',
                width: 200,
                height: 150,
                opacity: const AlwaysStoppedAnimation(.8),
              ),
            ]
      )
    );
      }
    );
  }
}