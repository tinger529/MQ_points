import 'package:flutter/material.dart';

// container for redemption buttons and show QR code buttons
Container buildContainerA(state, String page, String txt, {Color colour = const Color(0xFF6FC5C5), Color fontColor = const Color(0xFFA83759), String arg = ""}) {
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
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 5,
            offset: const Offset(2, 2), // changes position of shadow
          ),
        ],
      ),
      child: OutlinedButton(
          onPressed: () => {state.redirect(page, arg: arg)},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            side: const BorderSide(
              color: Colors.transparent,
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
Container buildContainerB(state, String page, String txt, String img, {Color colour = const Color(0xFFCFDEE0), Color fontColor = const Color.fromARGB(255, 7, 1, 2)}) {
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
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: OutlinedButton(
          onPressed: () => {state.redirect(page)},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            side: const BorderSide(
              color: Colors.transparent,
            ),
            padding: const EdgeInsets.all(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                img,
                width: 220,
                height: 90,
              ),
              Text(
              txt,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: fontColor,
                fontSize: 12,
                fontFamily: "Italic",
              ),
              ),
      ],
    ),
      ));
  }

// square containers for the item
Container buildContainerC(state, String page, String txt, {Color colour = const Color(0xFFCFDEE0), Color fontColor = const Color.fromARGB(255, 7, 1, 2)}) {
    return Container(
      width: 120.0,
      height: 120.0,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child: OutlinedButton(
          onPressed: () => {state.redirect(page)},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            side: const BorderSide(
              color: Colors.transparent,
            ),
            padding: const EdgeInsets.all(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/image/coffee.png',
                width: 120,
                height: 80,
              ),
              const SizedBox(height: 4),
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
Row buildContainerD(state, String page, String txt, {Color colour = const Color(0xFFCFDEE0), Color fontColor = const Color.fromARGB(255, 7, 1, 2)}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainerC(state, page, txt, colour: colour, fontColor: fontColor),
        const SizedBox(width: 15),
        buildContainerC(state, page, txt, colour: colour, fontColor: fontColor),
      ],
    );
  }

// container for the item
Container buildContainerE(state, String page, String txt, {Color colour = const Color(0xFFCFDEE0), Color fontColor = const Color.fromARGB(255, 7, 1, 2)}) {
    return Container(
      width: 250.0,
      height: 160.0,
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
          onPressed: () => {state.redirect(page)},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            side: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/image/coffee2.png',
                width: 240,
                height: 160,
                opacity: const AlwaysStoppedAnimation(.8),
              ),
      ],
    ),
      ));
  }

// container for setting buttons
Container buildContainerF(state, String page, String txt, {Color colour = const Color(0xFFE0F0F0), Color fontColor = const Color(0xFF7C8081), String arg = ""}) {
    return Container(
      width: 240.0,
      height: 50.0,
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
          onPressed: () => {state.redirect(page, arg: arg)},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            side: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          child: Text(
              txt,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: fontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
    ),
      );
  }

// container for the confirm message
Container buildContainerG(state, String page, String txt, {Color colour = const Color(0xFFFDFBFB), Color fontColor = const Color.fromARGB(255, 7, 1, 2), String arg = ""}) {
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
          onPressed: () => {state.redirect(page, arg: arg)},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            side: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          child: Text(
              txt,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: fontColor,
                fontSize: 16,
              ),
              ),
    ),
      );
  }

// tool
Container tool(state, String page, String pth) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: state.currentTheme ? const Color(0xFF073636) : const Color(0xFFCFDEE0),
      ),
      child: OutlinedButton(
          onPressed: () => {state.redirect(page)},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1.0),
            ),
            side: const BorderSide(
              color: Colors.transparent,
            ),
            padding: EdgeInsets.zero,
          ),
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                pth,
                width: 50,
                height: 50,
              ),
      ],
    ),
      ));
  }

// tool bar container
Row toolbar(state) {
    return state.currentTheme == false ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        tool(state, "home", 'assets/image/home.png'),
        const SizedBox(width: 3),
        tool(state, "redemption", "assets/image/shopping.png"),
        const SizedBox(width: 3),
        tool(state, "voucher", "assets/image/vouchers.png"),
        const SizedBox(width: 3),
        tool(state, "stores", "assets/image/stores.png"),
        const SizedBox(width: 3),
        tool(state, "setting", "assets/image/settings.png"),
      ],
    ) :
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        tool(state, "home", 'assets/image/homeDark.png'),
        const SizedBox(width: 3),
        tool(state, "redemption", "assets/image/shoppingDark.png"),
        const SizedBox(width: 3),
        tool(state, "voucher", "assets/image/vouchersDark.png"),
        const SizedBox(width: 3),
        tool(state, "stores", "assets/image/storesDark.png"),
        const SizedBox(width: 3),
        tool(state, "setting", "assets/image/settingsDark.png"),
      ],
    );
  }