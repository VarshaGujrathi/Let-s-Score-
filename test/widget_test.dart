import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:score_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Initialize Firebase
    final FirebaseApp firebaseApp = await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyBW23r0mLgUI8hX8mv7MSX9jQjH_Xbc-2o",
        appId: "1:306123812399:android:349d76dcbfef28e1fc60da",
        messagingSenderId: "306123812399",
        projectId: "letsscore-9c041",
      ),
    );

    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(initialization: Future.value(firebaseApp)));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
