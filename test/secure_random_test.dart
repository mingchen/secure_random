import 'package:test/test.dart';

import 'package:secure_random/secure_random.dart';

void main() {
  test('Test genRandomString()', () {
    final secureRandom = SecureRandom();
    expect(secureRandom.nextString(length: 0).length, 0);
    expect(secureRandom.nextString(length: 10).length, 10);
    expect(secureRandom.nextString(length: 1).length, 1);
  });
}
