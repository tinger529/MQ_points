import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mqpoint/screens/store_screen.dart';
import 'package:provider/provider.dart';
import 'package:mqpoint/models/state.dart';


void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('StoreScreen Renders Correctly', (WidgetTester tester) async {
  
    final state = StateModel();

    // Build our widget and trigger a frame
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (context) => state,
          child: Scaffold(
            body:StoreScreen(),
        )),
      ),
    );

    //expect(find.text('History'), findsOneWidget);
    //expect(find.text('Contact Us'), findsOneWidget);
    //expect(find.text('Earn Points'), findsOneWidget);
});
}