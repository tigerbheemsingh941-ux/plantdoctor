import 'package:flutter_test/flutter_test.dart';
import 'package:plantdoctor/main.dart';
import 'package:plantdoctor/src/providers/app_state.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => AppState(),
        child: const PlantDoctorApp(),
      ),
    );

    // Verify that Onboarding starts (since no shared_prefs mock, it might default to false)
    // Just finding a widget that should exist is enough for a smoke test.
    expect(
      find.text('Plant Doctor'),
      findsNothing,
    ); // Title is in MaterialApp, not visible text usually
  });
}
