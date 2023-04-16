import 'package:flutter_test/flutter_test.dart';
import 'package:posto/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AppViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
