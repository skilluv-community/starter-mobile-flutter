import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:starter_mobile_flutter/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('app boots and shows home screen', (tester) async {
    await tester.pumpWidget(const SkilluvStarterApp());
    await tester.pumpAndSettle();
    expect(find.text('Skilluv starter'), findsWidgets);
  });
}
