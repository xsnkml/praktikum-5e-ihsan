import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/screens/login_page.dart';

void main() {
  testWidgets('LoginPage - fills form and shows snackbar', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    final Finder email = find.byKey(const Key('emailField'));
    final Finder password = find.byKey(const Key('passwordField'));
    final Finder button = find.text('Masuk');

    expect(email, findsOneWidget);
    expect(password, findsOneWidget);
    expect(button, findsOneWidget);

    await tester.enterText(email, 'user@example.com');
    await tester.enterText(password, 'password123');

    // Tap the button
    await tester.tap(button);
    await tester.pump();

    // Snackbar is shown
    expect(find.byType(SnackBar), findsOneWidget);
  });
}
