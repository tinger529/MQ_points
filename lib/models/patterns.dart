import 'package:flutter/material.dart';

// container for redemption buttons and show QR code buttons
Container buildContainerA(state, String txt, {Color colour = const Color(0xFF6FC5C5), Color fontColor = const Color(0xFFA83759)}) {
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
          child: Text(
              txt,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: fontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Italic",
              ),
              ),
    ),
      );
  }

// container for sale events and earning points events
Container buildContainerB(state, String txt, {Color colour = const Color(0xFFCFDEE0), Color fontColor = const Color.fromARGB(255, 7, 1, 2)}) {
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

// square containers for the item
Container buildContainerC(state, String txt, {Color colour = const Color(0xFFCFDEE0), Color fontColor = const Color.fromARGB(255, 7, 1, 2)}) {
    return Container(
      width: 130.0,
      height: 130.0,
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
                'assets/image/coffee.png',
                width: 120,
                height: 80,
              ),
              Text(
              txt,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: fontColor,
                fontSize: 10,
                fontFamily: "Italic",
              ),
              ),
      ],
    ),
      ));
  } 

// two container C side by side 
Row buildContainerD(state, String txt, {Color colour = const Color(0xFFCFDEE0), Color fontColor = const Color.fromARGB(255, 7, 1, 2)}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainerC(state, txt, colour: colour, fontColor: fontColor),
        const SizedBox(width: 15),
        buildContainerC(state, txt, colour: colour, fontColor: fontColor),
      ],
    );
  }