import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fitness/main.dart';
import 'package:fitness/pages/home.dart';

void main() {
  testWidgets('AppBar title test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Find the AppBar widget
    final appBarFinder = find.byType(AppBar);

    // Verify that the AppBar widget exists
    expect(appBarFinder, findsOneWidget);

    // Get the AppBar widget
    final appBarWidget = tester.widget<AppBar>(appBarFinder);

    // Verify that the title is correct
    expect(appBarWidget.title, isA<Text>());
    expect((appBarWidget.title as Text).data, 'My App Title');
  });
}