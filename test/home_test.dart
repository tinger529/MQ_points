import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:mqpoint/models/state.dart';
import 'package:mqpoint/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen renders correctly', (WidgetTester tester) async {
    // Create a StateModel instance to provide to the HomeScreen
    final state = StateModel();

    // Build our widget and trigger a frame
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (_) => state,
          child: HomeScreen(),
        ),
      ),
    );

    // Verify that HomeScreen renders correctly
    expect(find.text('MQ POINTS: ${state.currentPoints}'), findsOneWidget);
    expect(find.text('Redeem Now!'), findsOneWidget);
    expect(find.text('Recent Sales'), findsOneWidget);
    expect(find.text('Earn Points'), findsOneWidget);
  });
}
