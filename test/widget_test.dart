import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:starter_mobile_flutter/features/home/home_screen.dart';
import 'package:starter_mobile_flutter/shared/theme.dart';

void main() {
  testWidgets('home screen renders title and nav buttons', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(theme: SkilluvTheme.dark(), home: const HomeScreen()),
      ),
    );
    expect(find.text('Skilluv starter'), findsOneWidget);
    expect(find.text('Counter'), findsOneWidget);
    expect(find.text('API demo'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });
}
