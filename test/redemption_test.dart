import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mqpoint/screens/redemption_screen.dart';
import 'package:provider/provider.dart';
import 'package:mqpoint/models/state.dart';


void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('RedemptionScreen Renders Correctly', (WidgetTester tester) async {
  
    final state = StateModel();

    // Build our widget and trigger a frame
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (context) => state,
          child: const RedemptionScreen(),
        ),
      ),
    );

    expect(find.text('MQ POINTS: ${state.currentPoints}'), findsOneWidget);
    expect(find.text('Coffee 50% off'), findsAny);
    //expect(find.text('Earn Points'), findsOneWidget);
});
}