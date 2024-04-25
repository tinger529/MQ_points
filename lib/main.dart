import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mqpoint/mq_point.dart';
import 'package:mqpoint/models/state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
         create: (context) => StateModel(),
         child: const MQpoint()
    )
  );
}
