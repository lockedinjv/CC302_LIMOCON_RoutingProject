// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:routing_app/main.dart';

void main() {
  testWidgets('student directory app loads the home screen', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Student Directory'), findsWidgets);
    expect(find.text('John Viel'), findsOneWidget);
    expect(find.text('JV'), findsOneWidget);
    expect(find.text('Ampong'), findsOneWidget);
  });
}
