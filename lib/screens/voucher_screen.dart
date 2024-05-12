import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';
import '../models/patterns.dart';
import 'package:mqpoint/models/voucher_model.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});

  List<List<dynamic>> pair_vouchers(List<dynamic> vouchers){
    List<List<dynamic>> pairs = [];
    for(int i = 0; i < vouchers.length; i+=2){
      if(i+1 < vouchers.length){
        pairs.add([vouchers[i], vouchers[i+1]]);
      } else {
        pairs.add([vouchers[i]]);
      }
    }
    return pairs;
  }
  
  @override
  Widget build(context) {

    return Consumer<StateModel>(
      builder: (context, state, child) {

        var vouchers = pair_vouchers(state.currentVouchers);

        return SingleChildScrollView( child: Stack(
          children: [
            Center(

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  const SizedBox(height: 10), // padding on top

                  Container(  // white box in the center
                    width: 300.0,
                    height: 700.0,
                    decoration: BoxDecoration(
                      color: state.currentTheme ? const Color(0xFF073636) : const Color(0xFFF2FEFE),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),

                    child: Column(
                      children: [
                        const SizedBox(height: 20),

                        buildContainerF(state, "voucher", 'MQ POINTS: ${state.currentPoints}', fontColor: const Color(0xFF3794A8)),
                        
                        const SizedBox(height: 20),

                        SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "   My vouchers",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: state.currentScene[2],
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Italic",
                              ),
                            ),
                        ),

                        const SizedBox(height: 20),

                        ...vouchers.map((v) {
                          if(v.length == 2){
                            return SizedBox(
                              width: double.infinity,
                              child: Column(
                                children: [
                                  buildContainerD(state, "use", v[0].getName, colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),
                                  const SizedBox(height: 15),
                                ],
                              ),
                            );
                          } 
                          else{
                            return Align(
                      child: buildContainerD_(state, "use", v[0].getName, colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2))               
                    );
                          }
                        }),

                        const SizedBox(height: 20),

                        SizedBox(   // Display text
                          width: double.infinity,
                          child: Text(
                              "  Expired",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: state.currentScene[2],
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Italic",
                              ),
                            ),
                        ),

                        const SizedBox(height: 20),

                        buildContainerD(state, "use", 'Coffee 50% off coupon', colour: const Color(0xFFCFDEE0), fontColor: const Color.fromARGB(255, 7, 1, 2)),
                          
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ]
              )
            ),

            Positioned.fill(
              top: 600,
              child: Align(
                alignment: Alignment.centerRight,
                child: toolbar(state),               
              ),
            ),
          ]));
      }
    );
  }
}