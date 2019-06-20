library secure_random;

import 'dart:math';

/// Secure random generator for string / number.
///
/// This class use cryptographically secure source of random numbers.
///
class SecureRandom {
  Random _random;

  SecureRandom() {
    _random = Random.secure();
  }

  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;

  String nextString({int length}) {
    String ret = '';

    for (var i = 0; i < length; ++i) {
      ret += _random.nextInt(36).toRadixString(36);
    }

    return ret;
  }

  int nextInt({int max}) {
    return _random.nextInt(max);
  }
}
