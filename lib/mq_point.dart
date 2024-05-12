import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mqpoint/screens/login_screen.dart';
import 'package:mqpoint/screens/first_screen.dart';
import 'package:mqpoint/screens/home_screen.dart';
import 'package:mqpoint/screens/redemption_screen.dart';
import 'package:mqpoint/screens/item_screen.dart';
import 'package:mqpoint/screens/event_screen.dart';
import 'package:mqpoint/screens/earn_screen.dart';
import 'package:mqpoint/screens/voucher_screen.dart';
import 'package:mqpoint/screens/setting_screen.dart';
import 'package:mqpoint/screens/store_screen.dart';
import 'package:mqpoint/screens/event_detail_screen.dart';
import 'package:mqpoint/screens/use_voucher_screen.dart';
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
              color: state.currentScene[0],
              child: switch(state.pageStatus) {
                "login" => LoginScreen(),
                "start" => const FirstScreen(),
                "home" => const HomeScreen(),
                "redemption" => const RedemptionScreen(),
                "item" => const ItemScreen(),
                "event" => const EventScreen(),
                "event_detail" => const EventDetailScreen(),
                "voucher" => const VoucherScreen(),
                "setting" => const SettingScreen(),
                "stores" => StoreScreen(),
                "use" => const UseVoucherScreen(),
                "earn" => const EarnScreen(),
                _ => const HomeScreen(),
                }
              )
          );
        }
      )
    );
  }
}