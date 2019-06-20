import 'package:test/test.dart';

import 'package:secure_random/secure_random.dart';

void main() {
  test('Test genRandomString()', () {
    final secureRandom = SecureRandom();

    expect(secureRandom.nextString(length: 0).length, 0);
    expect(secureRandom.nextString(length: 10).length, 10);
    expect(secureRandom.nextString(length: 1).length, 1);

    RegExp regExp = RegExp('^[a-z]{5}\$');
    expect(
        secureRandom
            .nextString(length: 5, charset: 'abcdefghijklmnopqrstuvwxyz')
            .length,
        5);

    expect(
        regExp.hasMatch(secureRandom.nextString(
            length: 5, charset: 'abcdefghijklmnopqrstuvwxyz')),
        isTrue);
  });

  test('Test nextInt()', () {
    final secureRandom = SecureRandom();

    for (var i = 0; i < 100; ++i) {
      expect(secureRandom.nextInt(max: 10), lessThan(10));
    }
  });
}
