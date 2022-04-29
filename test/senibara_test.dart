import 'package:flutter_test/flutter_test.dart';

void main() {
  String? companyName;
  setUp(() {
    companyName = 'Senibara';
  });
  testWidgets('senibara ...', (tester) async {});
  test('Name Checker', () {
    expect(companyName, 'Senibara');
  });
}
