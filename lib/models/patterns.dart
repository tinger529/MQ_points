import 'package:flutter/material.dart';

Container buildContainer(state, String txt, {Color colour = const Color(0xFF6FC5C5), Color fontColor = const Color(0xFFA83759)}) {
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
          onPressed: state.redirectRedemption,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/image/gym.jpeg',
                width: 240,
                height: 100,
                opacity: const AlwaysStoppedAnimation(.8),
              ),
              Text(
              txt,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: fontColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: "Italic",
              ),
              ),
      ],
    ),
      ));
  }